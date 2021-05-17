=begin
#Get into Teaching API - V1

#  Provides a RESTful API for integrating with the Get into Teaching CRM.    The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events).    The GIT API aims to provide:    * Simple, task-based RESTful APIs.  * Message queueing (while the GIT CRM is offline for updates).  * Validation to ensure consistency across services writing to the GIT CRM.                          

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module GetIntoTeachingApiClient
  class SchoolsExperienceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a classroom experience note to the candidate.
    # Adds a new classroom experience note to the candidate record
    # @param id The &#x60;id&#x60; of the &#x60;Candidate&#x60;.
    # @param body Classroom experience note.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_classroom_experience_note(id, body, opts = {})
      add_classroom_experience_note_with_http_info(id, body, opts)
      nil
    end

    # Add a classroom experience note to the candidate.
    # Adds a new classroom experience note to the candidate record
    # @param id The &#x60;id&#x60; of the &#x60;Candidate&#x60;.
    # @param body Classroom experience note.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_classroom_experience_note_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SchoolsExperienceApi.add_classroom_experience_note ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SchoolsExperienceApi.add_classroom_experience_note"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SchoolsExperienceApi.add_classroom_experience_note"
      end
      # resource path
      local_var_path = '/api/schools_experience/candidates/{id}/classroom_experience_notes'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: SchoolsExperienceApi#add_classroom_experience_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves a pre-populated SchoolsExperienceSignUp for the candidate.
    #                  Retrieves a pre-populated SchoolsExperienceSignUp for the candidate. The `accessToken` is obtained from a                  `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                  exchanged for your token matches the request payload here).
    # @param access_token Access token (PIN code).
    # @param body Candidate access token request (must match an existing candidate).
    # @param [Hash] opts the optional parameters
    # @return [SchoolsExperienceSignUp]
    def exchange_access_token_for_schools_experience_sign_up(access_token, body, opts = {})
      data, _status_code, _headers = exchange_access_token_for_schools_experience_sign_up_with_http_info(access_token, body, opts)
      data
    end

    # Retrieves a pre-populated SchoolsExperienceSignUp for the candidate.
    #                  Retrieves a pre-populated SchoolsExperienceSignUp for the candidate. The &#x60;accessToken&#x60; is obtained from a                  &#x60;POST /candidates/access_tokens&#x60; request (you must also ensure the &#x60;ExistingCandidateRequest&#x60; payload you                  exchanged for your token matches the request payload here).
    # @param access_token Access token (PIN code).
    # @param body Candidate access token request (must match an existing candidate).
    # @param [Hash] opts the optional parameters
    # @return [Array<(SchoolsExperienceSignUp, Fixnum, Hash)>] SchoolsExperienceSignUp data, response status code and response headers
    def exchange_access_token_for_schools_experience_sign_up_with_http_info(access_token, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SchoolsExperienceApi.exchange_access_token_for_schools_experience_sign_up ...'
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling SchoolsExperienceApi.exchange_access_token_for_schools_experience_sign_up"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SchoolsExperienceApi.exchange_access_token_for_schools_experience_sign_up"
      end
      # resource path
      local_var_path = '/api/schools_experience/candidates/exchange_access_token/{accessToken}'.sub('{' + 'accessToken' + '}', access_token.to_s)

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
        :return_type => 'SchoolsExperienceSignUp')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SchoolsExperienceApi#exchange_access_token_for_schools_experience_sign_up\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sign up a candidate for the Schools Experience service.
    # Validation errors may be present on the `SchoolsExperienceSignUp` object as well as the hidden `Candidate` model that is mapped to; property names are consistent, so you should check for inclusion of the field in the key when linking an error message back to a property on the request model. For example, an error on `DegreeSubject` can return under the keys `Candidate.Qualifications[0].DegreeSubject` and `DegreeSubject`.
    # @param body Candidate to sign up for the Schools Experience service.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def sign_up_schools_experience_candidate(body, opts = {})
      sign_up_schools_experience_candidate_with_http_info(body, opts)
      nil
    end

    # Sign up a candidate for the Schools Experience service.
    # Validation errors may be present on the &#x60;SchoolsExperienceSignUp&#x60; object as well as the hidden &#x60;Candidate&#x60; model that is mapped to; property names are consistent, so you should check for inclusion of the field in the key when linking an error message back to a property on the request model. For example, an error on &#x60;DegreeSubject&#x60; can return under the keys &#x60;Candidate.Qualifications[0].DegreeSubject&#x60; and &#x60;DegreeSubject&#x60;.
    # @param body Candidate to sign up for the Schools Experience service.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def sign_up_schools_experience_candidate_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SchoolsExperienceApi.sign_up_schools_experience_candidate ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SchoolsExperienceApi.sign_up_schools_experience_candidate"
      end
      # resource path
      local_var_path = '/api/schools_experience/candidates'

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
        @api_client.config.logger.debug "API called: SchoolsExperienceApi#sign_up_schools_experience_candidate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
