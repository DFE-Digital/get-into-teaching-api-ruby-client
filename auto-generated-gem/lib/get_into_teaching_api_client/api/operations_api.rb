=begin
#Get into Teaching API - V1

# Provides a RESTful API for integrating with the Get into Teaching CRM. The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events). The GIT API aims to provide: * Simple, task-based RESTful APIs. * Message queueing (while the GIT CRM is offline for updates). * Validation to ensure consistency across services writing to the GIT CRM.                         

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'cgi'

module GetIntoTeachingApiClient
  class OperationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Triggers a backfill job to sync the CRM with the Apply candidates.
    # The backfill will query all candidate information from the Apply API and queue jobs to sync the data with the CRM.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updated_since 
    # @return [nil]
    def backfill_apply_candidates(opts = {})
      backfill_apply_candidates_with_http_info(opts)
      nil
    end

    # Triggers a backfill job to sync the CRM with the Apply candidates.
    # The backfill will query all candidate information from the Apply API and queue jobs to sync the data with the CRM.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updated_since 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def backfill_apply_candidates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OperationsApi.backfill_apply_candidates ...'
      end
      # resource path
      local_var_path = '/api/operations/backfill_apply_candidates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'updatedSince'] = opts[:'updated_since'] if !opts[:'updated_since'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"OperationsApi.backfill_apply_candidates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#backfill_apply_candidates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Triggers a backfill job to sync the CRM with the Apply candidates for specified candidate Ids.
    # The backfill will query all candidate information from the Apply API and queue jobs to sync the data with the CRM.
    # @param candidate_ids_request [CandidateIdsRequest] Candidate IDs to backfill
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def backfill_apply_candidates_from_ids(candidate_ids_request, opts = {})
      backfill_apply_candidates_from_ids_with_http_info(candidate_ids_request, opts)
      nil
    end

    # Triggers a backfill job to sync the CRM with the Apply candidates for specified candidate Ids.
    # The backfill will query all candidate information from the Apply API and queue jobs to sync the data with the CRM.
    # @param candidate_ids_request [CandidateIdsRequest] Candidate IDs to backfill
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def backfill_apply_candidates_from_ids_with_http_info(candidate_ids_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OperationsApi.backfill_apply_candidates_from_ids ...'
      end
      # verify the required parameter 'candidate_ids_request' is set
      if @api_client.config.client_side_validation && candidate_ids_request.nil?
        fail ArgumentError, "Missing the required parameter 'candidate_ids_request' when calling OperationsApi.backfill_apply_candidates_from_ids"
      end
      # resource path
      local_var_path = '/api/operations/backfill_apply_candidates_from_ids'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(candidate_ids_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"OperationsApi.backfill_apply_candidates_from_ids",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#backfill_apply_candidates_from_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generates the mapping information.
    # Generates the mapping information describing how the models in the API map to the corresponding entities in Dynamics 365.
    # @param [Hash] opts the optional parameters
    # @return [Array<MappingInfo>]
    def generate_mapping_info(opts = {})
      data, _status_code, _headers = generate_mapping_info_with_http_info(opts)
      data
    end

    # Generates the mapping information.
    # Generates the mapping information describing how the models in the API map to the corresponding entities in Dynamics 365.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<MappingInfo>, Integer, Hash)>] Array<MappingInfo> data, response status code and response headers
    def generate_mapping_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OperationsApi.generate_mapping_info ...'
      end
      # resource path
      local_var_path = '/api/operations/generate_mapping_info'

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
      return_type = opts[:debug_return_type] || 'Array<MappingInfo>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OperationsApi.generate_mapping_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#generate_mapping_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Performs a health check.
    # @param [Hash] opts the optional parameters
    # @return [HealthCheckResponse]
    def health_check(opts = {})
      data, _status_code, _headers = health_check_with_http_info(opts)
      data
    end

    # Performs a health check.
    # @param [Hash] opts the optional parameters
    # @return [Array<(HealthCheckResponse, Integer, Hash)>] HealthCheckResponse data, response status code and response headers
    def health_check_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OperationsApi.health_check ...'
      end
      # resource path
      local_var_path = '/api/operations/health_check'

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
      return_type = opts[:debug_return_type] || 'HealthCheckResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OperationsApi.health_check",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#health_check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Temporarily pauses the integration with the CRM.
    # The CRM is taken offline for updates occasionally; this can result in errors when the API attempts to call out to the CRM. The CRM can call this endpoint to pause the API -> CRM integration (if not manually resumed it will auto-resume in 6 hours).
    # @param [Hash] opts the optional parameters
    # @return [HealthCheckResponse]
    def pause_crm_integration(opts = {})
      data, _status_code, _headers = pause_crm_integration_with_http_info(opts)
      data
    end

    # Temporarily pauses the integration with the CRM.
    # The CRM is taken offline for updates occasionally; this can result in errors when the API attempts to call out to the CRM. The CRM can call this endpoint to pause the API -&gt; CRM integration (if not manually resumed it will auto-resume in 6 hours).
    # @param [Hash] opts the optional parameters
    # @return [Array<(HealthCheckResponse, Integer, Hash)>] HealthCheckResponse data, response status code and response headers
    def pause_crm_integration_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OperationsApi.pause_crm_integration ...'
      end
      # resource path
      local_var_path = '/api/operations/pause_crm_integration'

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
      return_type = opts[:debug_return_type] || 'HealthCheckResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"OperationsApi.pause_crm_integration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#pause_crm_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resumes the integration with the CRM (after being paused).
    # @param [Hash] opts the optional parameters
    # @return [HealthCheckResponse]
    def resume_crm_integration(opts = {})
      data, _status_code, _headers = resume_crm_integration_with_http_info(opts)
      data
    end

    # Resumes the integration with the CRM (after being paused).
    # @param [Hash] opts the optional parameters
    # @return [Array<(HealthCheckResponse, Integer, Hash)>] HealthCheckResponse data, response status code and response headers
    def resume_crm_integration_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OperationsApi.resume_crm_integration ...'
      end
      # resource path
      local_var_path = '/api/operations/resume_crm_integration'

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
      return_type = opts[:debug_return_type] || 'HealthCheckResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"OperationsApi.resume_crm_integration",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#resume_crm_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
