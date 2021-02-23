require "faraday"
require "faraday_middleware"
require "faraday/http_cache"
require "faraday/encoding"
require "active_support/cache"
require "active_support/notifications"
require "get_into_teaching_api_client"
require "circuitbox/faraday_middleware"

require "api/client/version"
require "api/extensions/get_into_teaching_api_client/configuration"
require "api/extensions/get_into_teaching_api_client/api_client"

GetIntoTeachingApiClient::Configuration.prepend Extensions::GetIntoTeachingApiClient::Configuration
GetIntoTeachingApiClient::ApiClient.prepend Extensions::GetIntoTeachingApiClient::ApiClient

module Api
  module Client
  end
end
