=begin
#Get into Teaching API - V1

#  Provides a RESTful API for integrating with the Get into Teaching CRM.    The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events).    The GIT API aims to provide:    * Simple, task-based RESTful APIs.  * Message queueing (while the GIT CRM is offline for updates).  * Validation to ensure consistency across services writing to the GIT CRM.                          

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module GetIntoTeachingApiClient
  class TeachingEventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Adds an attendee to a teaching event.
    # If the `CandidateId` is specified then the existing candidate will be registered for the event, otherwise a new candidate will be created.  Validation errors may be present on the `TeachingEventAddAttendee` object as well as the hidden `Candidate` model that is mapped to; property names are consistent, so you should check for inclusion of the field in the key when linking an error message back to a property on the request model. For example, an error on `AcceptedPolicyId` can return under the keys `Candidate.PrivacyPolicy.AcceptedPolicyId` and `AcceptedPolicyId`.
    # @param body Attendee to add to the teaching event.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_teaching_event_attendee(body, opts = {})
      add_teaching_event_attendee_with_http_info(body, opts)
      nil
    end

    # Adds an attendee to a teaching event.
    # If the &#x60;CandidateId&#x60; is specified then the existing candidate will be registered for the event, otherwise a new candidate will be created.  Validation errors may be present on the &#x60;TeachingEventAddAttendee&#x60; object as well as the hidden &#x60;Candidate&#x60; model that is mapped to; property names are consistent, so you should check for inclusion of the field in the key when linking an error message back to a property on the request model. For example, an error on &#x60;AcceptedPolicyId&#x60; can return under the keys &#x60;Candidate.PrivacyPolicy.AcceptedPolicyId&#x60; and &#x60;AcceptedPolicyId&#x60;.
    # @param body Attendee to add to the teaching event.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_teaching_event_attendee_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeachingEventsApi.add_teaching_event_attendee ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TeachingEventsApi.add_teaching_event_attendee"
      end
      # resource path
      local_var_path = '/api/teaching_events/attendees'

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
        @api_client.config.logger.debug "API called: TeachingEventsApi#add_teaching_event_attendee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves a pre-populated TeachingEventAddAttendee for the candidate.
    #                   Retrieves a pre-populated TeachingEventAddAttendee for the candidate. The `accessToken` is obtained from a                   `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                   exchanged for your token matches the request payload here).
    # @param access_token Access token (PIN code).
    # @param body Candidate access token request (must match an existing candidate).
    # @param [Hash] opts the optional parameters
    # @return [TeachingEventAddAttendee]
    def exchange_access_token_for_teaching_event_add_attendee(access_token, body, opts = {})
      data, _status_code, _headers = exchange_access_token_for_teaching_event_add_attendee_with_http_info(access_token, body, opts)
      data
    end

    # Retrieves a pre-populated TeachingEventAddAttendee for the candidate.
    #                   Retrieves a pre-populated TeachingEventAddAttendee for the candidate. The &#x60;accessToken&#x60; is obtained from a                   &#x60;POST /candidates/access_tokens&#x60; request (you must also ensure the &#x60;ExistingCandidateRequest&#x60; payload you                   exchanged for your token matches the request payload here).
    # @param access_token Access token (PIN code).
    # @param body Candidate access token request (must match an existing candidate).
    # @param [Hash] opts the optional parameters
    # @return [Array<(TeachingEventAddAttendee, Fixnum, Hash)>] TeachingEventAddAttendee data, response status code and response headers
    def exchange_access_token_for_teaching_event_add_attendee_with_http_info(access_token, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeachingEventsApi.exchange_access_token_for_teaching_event_add_attendee ...'
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling TeachingEventsApi.exchange_access_token_for_teaching_event_add_attendee"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TeachingEventsApi.exchange_access_token_for_teaching_event_add_attendee"
      end
      # resource path
      local_var_path = '/api/teaching_events/attendees/exchange_access_token/{accessToken}'.sub('{' + 'accessToken' + '}', access_token.to_s)

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
        :return_type => 'TeachingEventAddAttendee')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeachingEventsApi#exchange_access_token_for_teaching_event_add_attendee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves an event.
    # @param readable_id The &#x60;readableId&#x60; of the &#x60;TeachingEvent&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [TeachingEvent]
    def get_teaching_event(readable_id, opts = {})
      data, _status_code, _headers = get_teaching_event_with_http_info(readable_id, opts)
      data
    end

    # Retrieves an event.
    # @param readable_id The &#x60;readableId&#x60; of the &#x60;TeachingEvent&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TeachingEvent, Fixnum, Hash)>] TeachingEvent data, response status code and response headers
    def get_teaching_event_with_http_info(readable_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeachingEventsApi.get_teaching_event ...'
      end
      # verify the required parameter 'readable_id' is set
      if @api_client.config.client_side_validation && readable_id.nil?
        fail ArgumentError, "Missing the required parameter 'readable_id' when calling TeachingEventsApi.get_teaching_event"
      end
      # resource path
      local_var_path = '/api/teaching_events/{readableId}'.sub('{' + 'readableId' + '}', readable_id.to_s)

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
        :return_type => 'TeachingEvent')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeachingEventsApi#get_teaching_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Searches for teaching events, returning grouped by type.
    # Searches for teaching events. Optionally limit the results by distance (in miles) from a postcode, event type and start date.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :postcode 
    # @option opts [Integer] :radius 
    # @option opts [Integer] :type_id 
    # @option opts [DateTime] :start_after 
    # @option opts [DateTime] :start_before 
    # @option opts [Integer] :quantity_per_type Quantity to return (per type). (default to 3)
    # @return [Array<TeachingEventsByType>]
    def search_teaching_events_grouped_by_type(opts = {})
      data, _status_code, _headers = search_teaching_events_grouped_by_type_with_http_info(opts)
      data
    end

    # Searches for teaching events, returning grouped by type.
    # Searches for teaching events. Optionally limit the results by distance (in miles) from a postcode, event type and start date.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :postcode 
    # @option opts [Integer] :radius 
    # @option opts [Integer] :type_id 
    # @option opts [DateTime] :start_after 
    # @option opts [DateTime] :start_before 
    # @option opts [Integer] :quantity_per_type Quantity to return (per type).
    # @return [Array<(Array<TeachingEventsByType>, Fixnum, Hash)>] Array<TeachingEventsByType> data, response status code and response headers
    def search_teaching_events_grouped_by_type_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeachingEventsApi.search_teaching_events_grouped_by_type ...'
      end
      if @api_client.config.client_side_validation && !opts[:'radius'].nil? && opts[:'radius'] <= 0
        fail ArgumentError, 'invalid value for "opts[:"radius"]" when calling TeachingEventsApi.search_teaching_events_grouped_by_type, must be greater than 0.'
      end

      # resource path
      local_var_path = '/api/teaching_events/search_grouped_by_type'

      # query parameters
      query_params = {}
      query_params[:'Postcode'] = opts[:'postcode'] if !opts[:'postcode'].nil?
      query_params[:'Radius'] = opts[:'radius'] if !opts[:'radius'].nil?
      query_params[:'TypeId'] = opts[:'type_id'] if !opts[:'type_id'].nil?
      query_params[:'StartAfter'] = opts[:'start_after'] if !opts[:'start_after'].nil?
      query_params[:'StartBefore'] = opts[:'start_before'] if !opts[:'start_before'].nil?
      query_params[:'quantityPerType'] = opts[:'quantity_per_type'] if !opts[:'quantity_per_type'].nil?

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
        :return_type => 'Array<TeachingEventsByType>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeachingEventsApi#search_teaching_events_grouped_by_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
