require_relative "./cache_invalidator"

module Extensions
  module GetIntoTeachingApiClient
    module ApiClient
      API_DATE_FORMAT = "%Y-%m-%d".freeze
      API_DATE_TIME_FORMAT = "#{API_DATE_FORMAT}T%H:%M:%S%:z".freeze

      def call_api(http_method, path, opts = {})
        super
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

      def build_request(http_method, path, request, opts = {})
        opts[:query_params] = format_date_times(opts[:query_params])

        super(http_method, path, request, opts)
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
