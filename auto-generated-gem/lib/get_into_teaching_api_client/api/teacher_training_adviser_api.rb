=begin
#Get into Teaching API - V1

# Provides a RESTful API for integrating with the Get into Teaching CRM. The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events). The GIT API aims to provide: * Simple, task-based RESTful APIs. * Message queueing (while the GIT CRM is offline for updates). * Validation to ensure consistency across services writing to the GIT CRM.                         

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'cgi'

module GetIntoTeachingApiClient
  class TeacherTrainingAdviserApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate.
    #                   Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate. The `accessToken` is obtained from a                   `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                   exchanged for your token matches the request payload here).
    # @param access_token [String] Access token (PIN code).
    # @param existing_candidate_request [ExistingCandidateRequest] Candidate access token request (must match an existing candidate).
    # @param [Hash] opts the optional parameters
    # @return [TeacherTrainingAdviserSignUp]
    def exchange_access_token_for_teacher_training_adviser_sign_up(access_token, existing_candidate_request, opts = {})
      data, _status_code, _headers = exchange_access_token_for_teacher_training_adviser_sign_up_with_http_info(access_token, existing_candidate_request, opts)
      data
    end

    # Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate.
    #                   Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate. The &#x60;accessToken&#x60; is obtained from a                   &#x60;POST /candidates/access_tokens&#x60; request (you must also ensure the &#x60;ExistingCandidateRequest&#x60; payload you                   exchanged for your token matches the request payload here).
    # @param access_token [String] Access token (PIN code).
    # @param existing_candidate_request [ExistingCandidateRequest] Candidate access token request (must match an existing candidate).
    # @param [Hash] opts the optional parameters
    # @return [Array<(TeacherTrainingAdviserSignUp, Integer, Hash)>] TeacherTrainingAdviserSignUp data, response status code and response headers
    def exchange_access_token_for_teacher_training_adviser_sign_up_with_http_info(access_token, existing_candidate_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeacherTrainingAdviserApi.exchange_access_token_for_teacher_training_adviser_sign_up ...'
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling TeacherTrainingAdviserApi.exchange_access_token_for_teacher_training_adviser_sign_up"
      end
      # verify the required parameter 'existing_candidate_request' is set
      if @api_client.config.client_side_validation && existing_candidate_request.nil?
        fail ArgumentError, "Missing the required parameter 'existing_candidate_request' when calling TeacherTrainingAdviserApi.exchange_access_token_for_teacher_training_adviser_sign_up"
      end
      # resource path
      local_var_path = '/api/teacher_training_adviser/candidates/exchange_access_token/{accessToken}'.sub('{' + 'accessToken' + '}', CGI.escape(access_token.to_s))

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
      return_type = opts[:debug_return_type] || 'TeacherTrainingAdviserSignUp'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"TeacherTrainingAdviserApi.exchange_access_token_for_teacher_training_adviser_sign_up",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeacherTrainingAdviserApi#exchange_access_token_for_teacher_training_adviser_sign_up\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Perform a matchback operation to retrieve a pre-populated TeacherTrainingAdviserSignUp for the candidate.
    # Attempts to matchback against a known candidate and returns a pre-populated TeacherTrainingAdviser sign up if a match is found.
    # @param existing_candidate_request [ExistingCandidateRequest] Candidate details to matchback.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def matchback_candidate(existing_candidate_request, opts = {})
      matchback_candidate_with_http_info(existing_candidate_request, opts)
      nil
    end

    # Perform a matchback operation to retrieve a pre-populated TeacherTrainingAdviserSignUp for the candidate.
    # Attempts to matchback against a known candidate and returns a pre-populated TeacherTrainingAdviser sign up if a match is found.
    # @param existing_candidate_request [ExistingCandidateRequest] Candidate details to matchback.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def matchback_candidate_with_http_info(existing_candidate_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeacherTrainingAdviserApi.matchback_candidate ...'
      end
      # verify the required parameter 'existing_candidate_request' is set
      if @api_client.config.client_side_validation && existing_candidate_request.nil?
        fail ArgumentError, "Missing the required parameter 'existing_candidate_request' when calling TeacherTrainingAdviserApi.matchback_candidate"
      end
      # resource path
      local_var_path = '/api/teacher_training_adviser/candidates/matchback'

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"TeacherTrainingAdviserApi.matchback_candidate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeacherTrainingAdviserApi#matchback_candidate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sign up a candidate for the Teacher Training Adviser service.
    # Queue a candidate upsert job.
    # @param teacher_training_adviser_sign_up [TeacherTrainingAdviserSignUp] Candidate to sign up for the Teacher Training Adviser service.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def sign_up_teacher_training_adviser_candidate(teacher_training_adviser_sign_up, opts = {})
      sign_up_teacher_training_adviser_candidate_with_http_info(teacher_training_adviser_sign_up, opts)
      nil
    end

    # Sign up a candidate for the Teacher Training Adviser service.
    # Queue a candidate upsert job.
    # @param teacher_training_adviser_sign_up [TeacherTrainingAdviserSignUp] Candidate to sign up for the Teacher Training Adviser service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def sign_up_teacher_training_adviser_candidate_with_http_info(teacher_training_adviser_sign_up, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeacherTrainingAdviserApi.sign_up_teacher_training_adviser_candidate ...'
      end
      # verify the required parameter 'teacher_training_adviser_sign_up' is set
      if @api_client.config.client_side_validation && teacher_training_adviser_sign_up.nil?
        fail ArgumentError, "Missing the required parameter 'teacher_training_adviser_sign_up' when calling TeacherTrainingAdviserApi.sign_up_teacher_training_adviser_candidate"
      end
      # resource path
      local_var_path = '/api/teacher_training_adviser/candidates'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(teacher_training_adviser_sign_up)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"TeacherTrainingAdviserApi.sign_up_teacher_training_adviser_candidate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeacherTrainingAdviserApi#sign_up_teacher_training_adviser_candidate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
