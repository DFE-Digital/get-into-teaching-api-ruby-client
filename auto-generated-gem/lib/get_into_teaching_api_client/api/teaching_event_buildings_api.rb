=begin
#Get into Teaching API - V1

#                              Provides a RESTful API for integrating with the Get into Teaching CRM.                              The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events).                              The GIT API aims to provide:                              * Simple, task-based RESTful APIs.                              * Message queueing (while the GIT CRM is offline for updates).                              * Validation to ensure consistency across services writing to the GIT CRM.                          

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'cgi'

module GetIntoTeachingApiClient
  class TeachingEventBuildingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves all event buildings.
    # @param [Hash] opts the optional parameters
    # @return [Array<TeachingEventBuilding>]
    def get_teaching_event_buildings(opts = {})
      data, _status_code, _headers = get_teaching_event_buildings_with_http_info(opts)
      data
    end

    # Retrieves all event buildings.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TeachingEventBuilding>, Integer, Hash)>] Array<TeachingEventBuilding> data, response status code and response headers
    def get_teaching_event_buildings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeachingEventBuildingsApi.get_teaching_event_buildings ...'
      end
      # resource path
      local_var_path = '/api/teaching_event_buildings'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<TeachingEventBuilding>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"TeachingEventBuildingsApi.get_teaching_event_buildings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeachingEventBuildingsApi#get_teaching_event_buildings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
