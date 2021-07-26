=begin
#Get into Teaching API - V1

# Provides a RESTful API for integrating with the Get into Teaching CRM. The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events). The GIT API aims to provide: * Simple, task-based RESTful APIs. * Message queueing (while the GIT CRM is offline for updates). * Validation to ensure consistency across services writing to the GIT CRM.                         

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module GetIntoTeachingApiClient
  class MailingListApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Adds a new member to the mailing list.
    #                  If the `CandidateId` is specified then the existing candidate will be                  added to the mailing list, otherwise a new candidate will be created.
    # @param body Member to add to the mailing list.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_mailing_list_member(body, opts = {})
      add_mailing_list_member_with_http_info(body, opts)
      nil
    end

    # Adds a new member to the mailing list.
    #                  If the &#x60;CandidateId&#x60; is specified then the existing candidate will be                  added to the mailing list, otherwise a new candidate will be created.
    # @param body Member to add to the mailing list.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_mailing_list_member_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MailingListApi.add_mailing_list_member ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MailingListApi.add_mailing_list_member"
      end
      # resource path
      local_var_path = '/api/mailing_list/members'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailingListApi#add_mailing_list_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves a pre-populated MailingListAddMember for the candidate.
    #                  Retrieves a pre-populated MailingListAddMember for the candidate. The `accessToken` is obtained from a                  `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                  exchanged for your token matches the request payload here).
    # @param access_token Access token (PIN code).
    # @param body Candidate access token request (must match an existing candidate).
    # @param [Hash] opts the optional parameters
    # @return [MailingListAddMember]
    def exchange_access_token_for_mailing_list_add_member(access_token, body, opts = {})
      data, _status_code, _headers = exchange_access_token_for_mailing_list_add_member_with_http_info(access_token, body, opts)
      data
    end

    # Retrieves a pre-populated MailingListAddMember for the candidate.
    #                  Retrieves a pre-populated MailingListAddMember for the candidate. The &#x60;accessToken&#x60; is obtained from a                  &#x60;POST /candidates/access_tokens&#x60; request (you must also ensure the &#x60;ExistingCandidateRequest&#x60; payload you                  exchanged for your token matches the request payload here).
    # @param access_token Access token (PIN code).
    # @param body Candidate access token request (must match an existing candidate).
    # @param [Hash] opts the optional parameters
    # @return [Array<(MailingListAddMember, Fixnum, Hash)>] MailingListAddMember data, response status code and response headers
    def exchange_access_token_for_mailing_list_add_member_with_http_info(access_token, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MailingListApi.exchange_access_token_for_mailing_list_add_member ...'
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling MailingListApi.exchange_access_token_for_mailing_list_add_member"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MailingListApi.exchange_access_token_for_mailing_list_add_member"
      end
      # resource path
      local_var_path = '/api/mailing_list/members/exchange_access_token/{accessToken}'.sub('{' + 'accessToken' + '}', access_token.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MailingListAddMember')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailingListApi#exchange_access_token_for_mailing_list_add_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves a pre-populated MailingListAddMember for the candidate.
    #                  Retrieves a pre-populated MailingListAddMember for the candidate. The `magicLinkToken` is obtained from a                  `POST /candidates/magic_link_tokens` request.
    # @param magic_link_token Magic link token.
    # @param [Hash] opts the optional parameters
    # @return [MailingListAddMember]
    def exchange_magic_link_token_for_mailing_list_add_member(magic_link_token, opts = {})
      data, _status_code, _headers = exchange_magic_link_token_for_mailing_list_add_member_with_http_info(magic_link_token, opts)
      data
    end

    # Retrieves a pre-populated MailingListAddMember for the candidate.
    #                  Retrieves a pre-populated MailingListAddMember for the candidate. The &#x60;magicLinkToken&#x60; is obtained from a                  &#x60;POST /candidates/magic_link_tokens&#x60; request.
    # @param magic_link_token Magic link token.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MailingListAddMember, Fixnum, Hash)>] MailingListAddMember data, response status code and response headers
    def exchange_magic_link_token_for_mailing_list_add_member_with_http_info(magic_link_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MailingListApi.exchange_magic_link_token_for_mailing_list_add_member ...'
      end
      # verify the required parameter 'magic_link_token' is set
      if @api_client.config.client_side_validation && magic_link_token.nil?
        fail ArgumentError, "Missing the required parameter 'magic_link_token' when calling MailingListApi.exchange_magic_link_token_for_mailing_list_add_member"
      end
      # resource path
      local_var_path = '/api/mailing_list/members/exchange_magic_link_token/{magicLinkToken}'.sub('{' + 'magicLinkToken' + '}', magic_link_token.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MailingListAddMember')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MailingListApi#exchange_magic_link_token_for_mailing_list_add_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
