module Extensions
  module GetIntoTeachingApiClient
    module Configuration
      RETRY_OPTIONS = {
        max: 2,
        methods: %i[get],
        exceptions: Faraday::Retry::Middleware::DEFAULT_EXCEPTIONS + [Faraday::ConnectionFailed],
      }.freeze
      REQUEST_TIMEOUT = 10.seconds

      attr_accessor :cache_store
      attr_accessor :circuit_breaker

      def configure_middleware(connection)
        if circuit_breaker&.dig(:enabled)
          connection.use :circuit_breaker,
            threshold: circuit_breaker[:threshold],
            timeout: circuit_breaker[:timeout],
            fallback: ->(_, exception) { raise_circuit_broken_error(exception) },
            error_handler: ->(exception, handler) { handle_error(exception, handler) }
        end

        connection.use Faraday::Response::RaiseError
        connection.use Middleware::RequestId
        connection.use :http_cache, store: cache_store, shared_cache: false

        connection.request :invalidate_cache, store: cache_store, base_path: base_path
        connection.request :retry, RETRY_OPTIONS

        connection.response :encoding

        connection.options.timeout = REQUEST_TIMEOUT
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
    end
  end
end
