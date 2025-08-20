require "faraday"
require 'faraday/retry'
require "faraday/http_cache"
require "faraday/encoding"
require "active_support/cache"
require "active_support/notifications"
require "active_support/current_attributes"
require "get_into_teaching_api_client"
require "faraday_middleware/circuit_breaker"

require "api/client/version"
require "api/models/current"
require "api/extensions/get_into_teaching_api_client/configuration"
require "api/extensions/get_into_teaching_api_client/api_client"
require "api/middleware/request_id"

class GetIntoTeachingApiClient::CircuitBrokenError < RuntimeError; end

GetIntoTeachingApiClient::Configuration.prepend Extensions::GetIntoTeachingApiClient::Configuration
GetIntoTeachingApiClient::ApiClient.prepend Extensions::GetIntoTeachingApiClient::ApiClient

module Api
  module Client
  end
end
