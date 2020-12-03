module Extensions
  module GetIntoTeachingApiClient
    module Caching
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
          f.use :http_cache, store: config.cache_store, shared_cache: false
          f.response :encoding
          f.adapter Faraday.default_adapter
          f.request :oauth2, config.api_key["Authorization"], token_type: :bearer
          f.request :retry, RETRY_OPTIONS
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
    end
  end
end
