=begin
#Get into Teaching API - V1

#  Provides a RESTful API for integrating with the Get into Teaching CRM.    The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events).    The GIT API aims to provide:    * Simple, task-based RESTful APIs.  * Message queueing (while the GIT CRM is offline for updates).  * Validation to ensure consistency across services writing to the GIT CRM.                          

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'uri'

module GetIntoTeachingApiClient
  class TypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves the list of candidate adviser eligibilities.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_candidate_adviser_eligibilities(opts = {})
      data, _status_code, _headers = get_candidate_adviser_eligibilities_with_http_info(opts)
      data
    end

    # Retrieves the list of candidate adviser eligibilities.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_candidate_adviser_eligibilities_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_candidate_adviser_eligibilities ...'
      end
      # resource path
      local_var_path = '/api/types/candidate/adviser_eligibilities'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_candidate_adviser_eligibilities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of candidate adviser requirements.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_candidate_adviser_requirements(opts = {})
      data, _status_code, _headers = get_candidate_adviser_requirements_with_http_info(opts)
      data
    end

    # Retrieves the list of candidate adviser requirements.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_candidate_adviser_requirements_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_candidate_adviser_requirements ...'
      end
      # resource path
      local_var_path = '/api/types/candidate/adviser_requirements'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_candidate_adviser_requirements\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of candidate assignment status.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_candidate_assignment_status(opts = {})
      data, _status_code, _headers = get_candidate_assignment_status_with_http_info(opts)
      data
    end

    # Retrieves the list of candidate assignment status.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_candidate_assignment_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_candidate_assignment_status ...'
      end
      # resource path
      local_var_path = '/api/types/candidate/assignment_status'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_candidate_assignment_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of candidate channels.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_candidate_channels(opts = {})
      data, _status_code, _headers = get_candidate_channels_with_http_info(opts)
      data
    end

    # Retrieves the list of candidate channels.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_candidate_channels_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_candidate_channels ...'
      end
      # resource path
      local_var_path = '/api/types/candidate/channels'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_candidate_channels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of candidate CGSE status.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_candidate_gcse_status(opts = {})
      data, _status_code, _headers = get_candidate_gcse_status_with_http_info(opts)
      data
    end

    # Retrieves the list of candidate CGSE status.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_candidate_gcse_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_candidate_gcse_status ...'
      end
      # resource path
      local_var_path = '/api/types/candidate/gcse_status'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_candidate_gcse_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of candidate initial teacher training years.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_candidate_initial_teacher_training_years(opts = {})
      data, _status_code, _headers = get_candidate_initial_teacher_training_years_with_http_info(opts)
      data
    end

    # Retrieves the list of candidate initial teacher training years.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_candidate_initial_teacher_training_years_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_candidate_initial_teacher_training_years ...'
      end
      # resource path
      local_var_path = '/api/types/candidate/initial_teacher_training_years'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_candidate_initial_teacher_training_years\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of candidate consideration journey stages.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_candidate_journey_stages(opts = {})
      data, _status_code, _headers = get_candidate_journey_stages_with_http_info(opts)
      data
    end

    # Retrieves the list of candidate consideration journey stages.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_candidate_journey_stages_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_candidate_journey_stages ...'
      end
      # resource path
      local_var_path = '/api/types/candidate/consideration_journey_stages'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_candidate_journey_stages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of candidate preferred education phases.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_candidate_preferred_education_phases(opts = {})
      data, _status_code, _headers = get_candidate_preferred_education_phases_with_http_info(opts)
      data
    end

    # Retrieves the list of candidate preferred education phases.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_candidate_preferred_education_phases_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_candidate_preferred_education_phases ...'
      end
      # resource path
      local_var_path = '/api/types/candidate/preferred_education_phases'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_candidate_preferred_education_phases\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of candidate retake CGSE status.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_candidate_retake_gcse_status(opts = {})
      data, _status_code, _headers = get_candidate_retake_gcse_status_with_http_info(opts)
      data
    end

    # Retrieves the list of candidate retake CGSE status.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_candidate_retake_gcse_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_candidate_retake_gcse_status ...'
      end
      # resource path
      local_var_path = '/api/types/candidate/retake_gcse_status'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_candidate_retake_gcse_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of candidate types.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_candidate_types(opts = {})
      data, _status_code, _headers = get_candidate_types_with_http_info(opts)
      data
    end

    # Retrieves the list of candidate types.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_candidate_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_candidate_types ...'
      end
      # resource path
      local_var_path = '/api/types/candidate/types'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_candidate_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of countries.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_country_types(opts = {})
      data, _status_code, _headers = get_country_types_with_http_info(opts)
      data
    end

    # Retrieves the list of countries.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_country_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_country_types ...'
      end
      # resource path
      local_var_path = '/api/types/countries'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_country_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of past teaching position education phases.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_past_teaching_position_education_phases(opts = {})
      data, _status_code, _headers = get_past_teaching_position_education_phases_with_http_info(opts)
      data
    end

    # Retrieves the list of past teaching position education phases.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_past_teaching_position_education_phases_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_past_teaching_position_education_phases ...'
      end
      # resource path
      local_var_path = '/api/types/past_teaching_position/education_phases'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_past_teaching_position_education_phases\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of phone call channels.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_phone_call_channels(opts = {})
      data, _status_code, _headers = get_phone_call_channels_with_http_info(opts)
      data
    end

    # Retrieves the list of phone call channels.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_phone_call_channels_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_phone_call_channels ...'
      end
      # resource path
      local_var_path = '/api/types/phone_call/channels'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_phone_call_channels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of qualification degree status.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_qualification_degree_status(opts = {})
      data, _status_code, _headers = get_qualification_degree_status_with_http_info(opts)
      data
    end

    # Retrieves the list of qualification degree status.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_qualification_degree_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_qualification_degree_status ...'
      end
      # resource path
      local_var_path = '/api/types/qualification/degree_status'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_qualification_degree_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of qualification types.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_qualification_types(opts = {})
      data, _status_code, _headers = get_qualification_types_with_http_info(opts)
      data
    end

    # Retrieves the list of qualification types.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_qualification_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_qualification_types ...'
      end
      # resource path
      local_var_path = '/api/types/qualification/types'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_qualification_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of qualification UK degree grades.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_qualification_uk_degree_grades(opts = {})
      data, _status_code, _headers = get_qualification_uk_degree_grades_with_http_info(opts)
      data
    end

    # Retrieves the list of qualification UK degree grades.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_qualification_uk_degree_grades_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_qualification_uk_degree_grades ...'
      end
      # resource path
      local_var_path = '/api/types/qualification/uk_degree_grades'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_qualification_uk_degree_grades\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of subscription types.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_subscription_types(opts = {})
      data, _status_code, _headers = get_subscription_types_with_http_info(opts)
      data
    end

    # Retrieves the list of subscription types.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_subscription_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_subscription_types ...'
      end
      # resource path
      local_var_path = '/api/types/service_subscription/types'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_subscription_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of teaching event registration channels.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_teaching_event_registration_channels(opts = {})
      data, _status_code, _headers = get_teaching_event_registration_channels_with_http_info(opts)
      data
    end

    # Retrieves the list of teaching event registration channels.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_teaching_event_registration_channels_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_teaching_event_registration_channels ...'
      end
      # resource path
      local_var_path = '/api/types/teaching_event_registration/channels'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_teaching_event_registration_channels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of teaching event types.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_teaching_event_types(opts = {})
      data, _status_code, _headers = get_teaching_event_types_with_http_info(opts)
      data
    end

    # Retrieves the list of teaching event types.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_teaching_event_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_teaching_event_types ...'
      end
      # resource path
      local_var_path = '/api/types/teaching_event/types'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_teaching_event_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the list of teaching subjects.
    # @param [Hash] opts the optional parameters
    # @return [Array<TypeEntity>]
    def get_teaching_subjects(opts = {})
      data, _status_code, _headers = get_teaching_subjects_with_http_info(opts)
      data
    end

    # Retrieves the list of teaching subjects.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TypeEntity>, Fixnum, Hash)>] Array<TypeEntity> data, response status code and response headers
    def get_teaching_subjects_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TypesApi.get_teaching_subjects ...'
      end
      # resource path
      local_var_path = '/api/types/teaching_subjects'

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
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TypeEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TypesApi#get_teaching_subjects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
