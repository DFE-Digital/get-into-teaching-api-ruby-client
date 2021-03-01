require "faraday"
require "faraday_middleware"
require "faraday/http_cache"
require "faraday/encoding"
require "active_support/cache"
require "active_support/notifications"
require "get_into_teaching_api_client"
require "faraday_middleware/circuit_breaker"

require "api/client/version"
require "api/extensions/get_into_teaching_api_client/configuration"
require "api/extensions/get_into_teaching_api_client/api_client"

class GetIntoTeachingApiClient::CircuitBrokenError < RuntimeError; end

GetIntoTeachingApiClient::Configuration.prepend Extensions::GetIntoTeachingApiClient::Configuration
GetIntoTeachingApiClient::ApiClient.prepend Extensions::GetIntoTeachingApiClient::ApiClient

module Api
  module Client
  end
end
