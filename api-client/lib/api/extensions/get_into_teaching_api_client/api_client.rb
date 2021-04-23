require_relative "./invalidate_cache"

module Extensions
  module GetIntoTeachingApiClient
    module ApiClient
      API_DATE_FORMAT = "%Y-%m-%d".freeze
      API_DATE_TIME_FORMAT = "#{API_DATE_FORMAT}T%H:%M:%S%:z".freeze
      MAX_AGE = 5 * 60 # 5 minutes
      MAX_RETRIES = 1
      RETRY_EXCEPTIONS = [::Faraday::ConnectionFailed].freeze
      RETRY_OPTIONS = {
        max: MAX_RETRIES,
        methods: %i[get],
        exceptions:
          ::Faraday::Request::Retry::DEFAULT_EXCEPTIONS + RETRY_EXCEPTIONS,
      }.freeze

      def faraday
        Faraday.new do |f|
          if config.circuit_breaker&.dig(:enabled)
            f.use :circuit_breaker,
                  threshold: config.circuit_breaker[:threshold],
                  timeout: config.circuit_breaker[:timeout],
                  fallback: ->(_, exception) { raise_circuit_broken_error(exception) },
                  error_handler: ->(exception, handler) { handle_error(exception, handler) }
          end
          f.use Faraday::Response::RaiseError
          f.use RequestId
          f.use InvalidateCache, store: config.cache_store
          f.use :http_cache, store: config.cache_store, shared_cache: false
          f.request :oauth2, config.api_key["Authorization"], token_type: :bearer
          f.request :retry, RETRY_OPTIONS
          f.response :encoding
          f.adapter Faraday.default_adapter
        end
      end

      def call_api(http_method, path, opts = {})
        original_request = build_request(http_method, path, opts)

        response = faraday.public_send(http_method.downcase) do |req|
          req.url(original_request.url)
          req.params = original_request.options[:params]
          req.body = original_request.options[:body]
          req.headers["Content-Type"] = "application/json"
        end

        if opts[:return_type]
          data = deserialize(response, opts[:return_type])
        end

        [data, response.status, response.headers]
      rescue Faraday::Error => error
        if error.response.present?
          raise ::GetIntoTeachingApiClient::ApiError.new(
            code: error.response_status,
            response_headers: error.response_headers,
            response_body: error.response_body,
          )
        else
          raise error
        end
      end

      def build_request(http_method, path, opts = {})
        opts[:query_params] = format_date_times(opts[:query_params])

        super(http_method, path, opts)
      end

      def object_to_hash(obj)
        if obj.respond_to?(:to_hash)
          format_date_times(obj.to_hash)
        else
          obj
        end
      end

    private

      def format_date_times(params = {})
        params.transform_values do |value|
          case value
          when DateTime, Time
            value.strftime(API_DATE_TIME_FORMAT)
          when Date
            value.strftime(API_DATE_FORMAT)
          else
            value
          end
        end
      end

      def handle_error(exception, handler)
        exceptions = [Faraday::UnauthorizedError,
                      Faraday::ForbiddenError,
                      Faraday::ServerError]

        raise exception unless exceptions.include?(exception.class)

        handler.call(exception)
      end

      # Stoplight will return nil when the circuit is open; in that scenario,
      # we want to return a CircuitBrokenError. Otherwise, we want to behaviour
      # to remain unchanged.
      def raise_circuit_broken_error(exception)
        raise exception if exception.present?

        raise ::GetIntoTeachingApiClient::CircuitBrokenError
      end

      class RequestId < Faraday::Middleware
        def initialize(app)
          super(app)
        end

        def call(env)
          request_id = ::GetIntoTeachingApiClient::Current.request_id

          env[:request_headers]["Request-Id"] = request_id if request_id

          @app.call(env)
        end
      end
    end
  end
end
