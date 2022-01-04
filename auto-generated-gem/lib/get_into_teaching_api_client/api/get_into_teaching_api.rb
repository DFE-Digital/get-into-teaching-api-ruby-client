=begin
#Get into Teaching API - V1

# Provides a RESTful API for integrating with the Get into Teaching CRM. The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events). The GIT API aims to provide: * Simple, task-based RESTful APIs. * Message queueing (while the GIT CRM is offline for updates). * Validation to ensure consistency across services writing to the GIT CRM.                         

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'cgi'

module GetIntoTeachingApiClient
  class GetIntoTeachingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Schedule a callback for the candidate.
    # Queues a candidate upsert job.
    # @param get_into_teaching_callback [GetIntoTeachingCallback] Candidate to book a callback for.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def book_get_into_teaching_callback(get_into_teaching_callback, opts = {})
      book_get_into_teaching_callback_with_http_info(get_into_teaching_callback, opts)
      nil
    end

    # Schedule a callback for the candidate.
    # Queues a candidate upsert job.
    # @param get_into_teaching_callback [GetIntoTeachingCallback] Candidate to book a callback for.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def book_get_into_teaching_callback_with_http_info(get_into_teaching_callback, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GetIntoTeachingApi.book_get_into_teaching_callback ...'
      end
      # verify the required parameter 'get_into_teaching_callback' is set
      if @api_client.config.client_side_validation && get_into_teaching_callback.nil?
        fail ArgumentError, "Missing the required parameter 'get_into_teaching_callback' when calling GetIntoTeachingApi.book_get_into_teaching_callback"
      end
      # resource path
      local_var_path = '/api/get_into_teaching/callbacks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_into_teaching_callback)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"GetIntoTeachingApi.book_get_into_teaching_callback",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GetIntoTeachingApi#book_get_into_teaching_callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves a pre-populated GetIntoTeachingCallback for the candidate.
    #                          Retrieves a pre-populated GetIntoTeachingCallback for the candidate. The `accessToken` is obtained from a                          `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                          exchanged for your token matches the request payload here).
    # @param access_token [String] Access token (PIN code).
    # @param existing_candidate_request [ExistingCandidateRequest] Candidate access token request (must match an existing candidate).
    # @param [Hash] opts the optional parameters
    # @return [GetIntoTeachingCallback]
    def exchange_access_token_for_get_into_teaching_callback(access_token, existing_candidate_request, opts = {})
      data, _status_code, _headers = exchange_access_token_for_get_into_teaching_callback_with_http_info(access_token, existing_candidate_request, opts)
      data
    end

    # Retrieves a pre-populated GetIntoTeachingCallback for the candidate.
    #                          Retrieves a pre-populated GetIntoTeachingCallback for the candidate. The &#x60;accessToken&#x60; is obtained from a                          &#x60;POST /candidates/access_tokens&#x60; request (you must also ensure the &#x60;ExistingCandidateRequest&#x60; payload you                          exchanged for your token matches the request payload here).
    # @param access_token [String] Access token (PIN code).
    # @param existing_candidate_request [ExistingCandidateRequest] Candidate access token request (must match an existing candidate).
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetIntoTeachingCallback, Integer, Hash)>] GetIntoTeachingCallback data, response status code and response headers
    def exchange_access_token_for_get_into_teaching_callback_with_http_info(access_token, existing_candidate_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GetIntoTeachingApi.exchange_access_token_for_get_into_teaching_callback ...'
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling GetIntoTeachingApi.exchange_access_token_for_get_into_teaching_callback"
      end
      # verify the required parameter 'existing_candidate_request' is set
      if @api_client.config.client_side_validation && existing_candidate_request.nil?
        fail ArgumentError, "Missing the required parameter 'existing_candidate_request' when calling GetIntoTeachingApi.exchange_access_token_for_get_into_teaching_callback"
      end
      # resource path
      local_var_path = '/api/get_into_teaching/callbacks/exchange_access_token/{accessToken}'.sub('{' + 'accessToken' + '}', CGI.escape(access_token.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(existing_candidate_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GetIntoTeachingCallback'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"GetIntoTeachingApi.exchange_access_token_for_get_into_teaching_callback",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GetIntoTeachingApi#exchange_access_token_for_get_into_teaching_callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
