module Extensions
  module GetIntoTeachingApiClient
    class CircuitBrokenError < RuntimeError; end

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
        logger = Logger.new STDOUT
        logger.level = Logger::DEBUG

        Faraday.new do |f|
          f.response :logger, logger
          if config.circuit_breaker != nil && config.circuit_breaker[:enabled]
            f.use :circuit_breaker,
                  threshold: config.circuit_breaker[:threshold],
                  timeout: config.circuit_breaker[:timeout],
                  fallback: -> (_, exception) { raise_circuit_broken_error(_, exception) },
                  error_handler: -> (exception, handler) { allow_error_types(exception, handler) }
          end
          f.use :http_cache, store: config.cache_store, shared_cache: false
          f.response :encoding
          f.adapter Faraday.default_adapter
          f.request :oauth2, config.api_key["Authorization"], token_type: :bearer
          f.request :retry, RETRY_OPTIONS
        end
      end

      def allow_error_types(exception, handler)
        puts exception
        allowed_exceptions = [Faraday::ResourceNotFound,
                              Faraday::BadRequestError,
                              Faraday::RetriableResponse,
                              Faraday::UnprocessableEntityError,
                              Faraday::ConnectionFailed]

        raise exception if allowed_exceptions.include?(exception.class)

        handler.call(exception)
      end

      def raise_circuit_broken_error(_, exception)
        puts exception
        raise GetIntoTeachingApiClient::CircuitBrokenError if exception == nil
      end

      def call_api(http_method, path, opts = {})
        original_request = build_request(http_method, path, opts)

        response = faraday.public_send(http_method.downcase) do |req|
          req.url(original_request.url)
          req.params = original_request.options[:params]
          req.body = original_request.options[:body]
          req.headers["Content-Type"] = "application/json"
        end

        unless response.success?
          raise ::GetIntoTeachingApiClient::ApiError.new(
            code: response.status,
            response_headers: response.headers,
            response_body: response.body,
          )
        end

        if opts[:return_type]
          data = deserialize(response, opts[:return_type])
        end

        [data, response.status, response.headers]
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
    end
  end
end
