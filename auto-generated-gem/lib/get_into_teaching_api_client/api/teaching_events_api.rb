=begin
#Get into Teaching API - V1

#                              Provides a RESTful API for integrating with the Get into Teaching CRM.                              The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events).                              The GIT API aims to provide:                              * Simple, task-based RESTful APIs.                              * Message queueing (while the GIT CRM is offline for updates).                              * Validation to ensure consistency across services writing to the GIT CRM.                          

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'cgi'

module GetIntoTeachingApiClient
  class TeachingEventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Adds an attendee to a teaching event.
    #                  If the `CandidateId` is specified then the existing candidate will be                  registered for the event, otherwise a new candidate will be created.
    # @param teaching_event_add_attendee [TeachingEventAddAttendee] Attendee to add to the teaching event.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_teaching_event_attendee(teaching_event_add_attendee, opts = {})
      add_teaching_event_attendee_with_http_info(teaching_event_add_attendee, opts)
      nil
    end

    # Adds an attendee to a teaching event.
    #                  If the &#x60;CandidateId&#x60; is specified then the existing candidate will be                  registered for the event, otherwise a new candidate will be created.
    # @param teaching_event_add_attendee [TeachingEventAddAttendee] Attendee to add to the teaching event.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def add_teaching_event_attendee_with_http_info(teaching_event_add_attendee, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeachingEventsApi.add_teaching_event_attendee ...'
      end
      # verify the required parameter 'teaching_event_add_attendee' is set
      if @api_client.config.client_side_validation && teaching_event_add_attendee.nil?
        fail ArgumentError, "Missing the required parameter 'teaching_event_add_attendee' when calling TeachingEventsApi.add_teaching_event_attendee"
      end
      # resource path
      local_var_path = '/api/teaching_events/attendees'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(teaching_event_add_attendee)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"TeachingEventsApi.add_teaching_event_attendee",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeachingEventsApi#add_teaching_event_attendee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves a pre-populated TeachingEventAddAttendee for the candidate.
    #                  Retrieves a pre-populated TeachingEventAddAttendee for the candidate. The `accessToken` is obtained from a                  `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                  exchanged for your token matches the request payload here).
    # @param access_token [String] Access token (PIN code).
    # @param existing_candidate_request [ExistingCandidateRequest] Candidate access token request (must match an existing candidate).
    # @param [Hash] opts the optional parameters
    # @return [TeachingEventAddAttendee]
    def exchange_access_token_for_teaching_event_add_attendee(access_token, existing_candidate_request, opts = {})
      data, _status_code, _headers = exchange_access_token_for_teaching_event_add_attendee_with_http_info(access_token, existing_candidate_request, opts)
      data
    end

    # Retrieves a pre-populated TeachingEventAddAttendee for the candidate.
    #                  Retrieves a pre-populated TeachingEventAddAttendee for the candidate. The &#x60;accessToken&#x60; is obtained from a                  &#x60;POST /candidates/access_tokens&#x60; request (you must also ensure the &#x60;ExistingCandidateRequest&#x60; payload you                  exchanged for your token matches the request payload here).
    # @param access_token [String] Access token (PIN code).
    # @param existing_candidate_request [ExistingCandidateRequest] Candidate access token request (must match an existing candidate).
    # @param [Hash] opts the optional parameters
    # @return [Array<(TeachingEventAddAttendee, Integer, Hash)>] TeachingEventAddAttendee data, response status code and response headers
    def exchange_access_token_for_teaching_event_add_attendee_with_http_info(access_token, existing_candidate_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeachingEventsApi.exchange_access_token_for_teaching_event_add_attendee ...'
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling TeachingEventsApi.exchange_access_token_for_teaching_event_add_attendee"
      end
      # verify the required parameter 'existing_candidate_request' is set
      if @api_client.config.client_side_validation && existing_candidate_request.nil?
        fail ArgumentError, "Missing the required parameter 'existing_candidate_request' when calling TeachingEventsApi.exchange_access_token_for_teaching_event_add_attendee"
      end
      # resource path
      local_var_path = '/api/teaching_events/attendees/exchange_access_token/{accessToken}'.sub('{' + 'accessToken' + '}', CGI.escape(access_token.to_s))

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
      return_type = opts[:debug_return_type] || 'TeachingEventAddAttendee'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"TeachingEventsApi.exchange_access_token_for_teaching_event_add_attendee",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeachingEventsApi#exchange_access_token_for_teaching_event_add_attendee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves a pre-populated TeachingEventAddAttendee for the candidate (allowing to proceed as unverified).
    #                          Retrieves a pre-populated TeachingEventAddAttendee for the candidate. This mechanism should be used with caution                         and the candidate should be treated as 'unverified' by the client.
    # @param existing_candidate_request [ExistingCandidateRequest] Candidate access token request (must match an existing candidate).
    # @param [Hash] opts the optional parameters
    # @return [TeachingEventAddAttendee]
    def exchange_unverified_request_for_teaching_event_add_attendee(existing_candidate_request, opts = {})
      data, _status_code, _headers = exchange_unverified_request_for_teaching_event_add_attendee_with_http_info(existing_candidate_request, opts)
      data
    end

    # Retrieves a pre-populated TeachingEventAddAttendee for the candidate (allowing to proceed as unverified).
    #                          Retrieves a pre-populated TeachingEventAddAttendee for the candidate. This mechanism should be used with caution                         and the candidate should be treated as &#39;unverified&#39; by the client.
    # @param existing_candidate_request [ExistingCandidateRequest] Candidate access token request (must match an existing candidate).
    # @param [Hash] opts the optional parameters
    # @return [Array<(TeachingEventAddAttendee, Integer, Hash)>] TeachingEventAddAttendee data, response status code and response headers
    def exchange_unverified_request_for_teaching_event_add_attendee_with_http_info(existing_candidate_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeachingEventsApi.exchange_unverified_request_for_teaching_event_add_attendee ...'
      end
      # verify the required parameter 'existing_candidate_request' is set
      if @api_client.config.client_side_validation && existing_candidate_request.nil?
        fail ArgumentError, "Missing the required parameter 'existing_candidate_request' when calling TeachingEventsApi.exchange_unverified_request_for_teaching_event_add_attendee"
      end
      # resource path
      local_var_path = '/api/teaching_events/attendees/exchange_unverified_request'

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
      return_type = opts[:debug_return_type] || 'TeachingEventAddAttendee'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"TeachingEventsApi.exchange_unverified_request_for_teaching_event_add_attendee",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeachingEventsApi#exchange_unverified_request_for_teaching_event_add_attendee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves an event.
    # @param readable_id [String] The &#x60;readableId&#x60; of the &#x60;TeachingEvent&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [TeachingEvent]
    def get_teaching_event(readable_id, opts = {})
      data, _status_code, _headers = get_teaching_event_with_http_info(readable_id, opts)
      data
    end

    # Retrieves an event.
    # @param readable_id [String] The &#x60;readableId&#x60; of the &#x60;TeachingEvent&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TeachingEvent, Integer, Hash)>] TeachingEvent data, response status code and response headers
    def get_teaching_event_with_http_info(readable_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeachingEventsApi.get_teaching_event ...'
      end
      # verify the required parameter 'readable_id' is set
      if @api_client.config.client_side_validation && readable_id.nil?
        fail ArgumentError, "Missing the required parameter 'readable_id' when calling TeachingEventsApi.get_teaching_event"
      end
      # resource path
      local_var_path = '/api/teaching_events/{readableId}'.sub('{' + 'readableId' + '}', CGI.escape(readable_id.to_s))

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
      return_type = opts[:debug_return_type] || 'TeachingEvent'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"TeachingEventsApi.get_teaching_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeachingEventsApi#get_teaching_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Searches for teaching events.
    # Searches for teaching events. Optionally limit the results by distance (in miles) from a postcode, event type and start date.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :postcode Postcode to center search around.
    # @option opts [Integer] :radius Set to filter results to a radius (in miles) around the postcode.
    # @option opts [Array<Integer>] :type_ids Set to filter results to a type of teaching event. Each ID must match a &#x60;typeId&#x60; of the &#x60;TeachingEvent&#x60; schema.
    # @option opts [Boolean] :online Set to true to return only online events and false to return only in-person events.
    # @option opts [Time] :start_after Set to filter results to those that start after a given date.
    # @option opts [Time] :start_before Set to filter results to those that start before a given date.
    # @option opts [Array<Integer>] :status_ids Set to filter results by event status.
    # @option opts [Array<Integer>] :accessibility_options Set to filter results by accessibility options.
    # @option opts [Integer] :quantity Quantity to return. (default to 10)
    # @return [Array<TeachingEvent>]
    def search_teaching_events(opts = {})
      data, _status_code, _headers = search_teaching_events_with_http_info(opts)
      data
    end

    # Searches for teaching events.
    # Searches for teaching events. Optionally limit the results by distance (in miles) from a postcode, event type and start date.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :postcode Postcode to center search around.
    # @option opts [Integer] :radius Set to filter results to a radius (in miles) around the postcode.
    # @option opts [Array<Integer>] :type_ids Set to filter results to a type of teaching event. Each ID must match a &#x60;typeId&#x60; of the &#x60;TeachingEvent&#x60; schema.
    # @option opts [Boolean] :online Set to true to return only online events and false to return only in-person events.
    # @option opts [Time] :start_after Set to filter results to those that start after a given date.
    # @option opts [Time] :start_before Set to filter results to those that start before a given date.
    # @option opts [Array<Integer>] :status_ids Set to filter results by event status.
    # @option opts [Array<Integer>] :accessibility_options Set to filter results by accessibility options.
    # @option opts [Integer] :quantity Quantity to return.
    # @return [Array<(Array<TeachingEvent>, Integer, Hash)>] Array<TeachingEvent> data, response status code and response headers
    def search_teaching_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeachingEventsApi.search_teaching_events ...'
      end
      if @api_client.config.client_side_validation && !opts[:'radius'].nil? && opts[:'radius'] <= 0
        fail ArgumentError, 'invalid value for "opts[:"radius"]" when calling TeachingEventsApi.search_teaching_events, must be greater than 0.'
      end

      # resource path
      local_var_path = '/api/teaching_events/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'Postcode'] = opts[:'postcode'] if !opts[:'postcode'].nil?
      query_params[:'Radius'] = opts[:'radius'] if !opts[:'radius'].nil?
      query_params[:'TypeIds'] = @api_client.build_collection_param(opts[:'type_ids'], :multi) if !opts[:'type_ids'].nil?
      query_params[:'Online'] = opts[:'online'] if !opts[:'online'].nil?
      query_params[:'StartAfter'] = opts[:'start_after'] if !opts[:'start_after'].nil?
      query_params[:'StartBefore'] = opts[:'start_before'] if !opts[:'start_before'].nil?
      query_params[:'StatusIds'] = @api_client.build_collection_param(opts[:'status_ids'], :multi) if !opts[:'status_ids'].nil?
      query_params[:'AccessibilityOptions'] = @api_client.build_collection_param(opts[:'accessibility_options'], :multi) if !opts[:'accessibility_options'].nil?
      query_params[:'quantity'] = opts[:'quantity'] if !opts[:'quantity'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<TeachingEvent>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"TeachingEventsApi.search_teaching_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeachingEventsApi#search_teaching_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds or updates a teaching event.
    # If the `id` is specified then the existing teaching event will be updated, otherwise a new teaching event will be created.
    # @param teaching_event [TeachingEvent] Teaching event to upsert.
    # @param [Hash] opts the optional parameters
    # @return [TeachingEvent]
    def upsert_teaching_event(teaching_event, opts = {})
      data, _status_code, _headers = upsert_teaching_event_with_http_info(teaching_event, opts)
      data
    end

    # Adds or updates a teaching event.
    # If the &#x60;id&#x60; is specified then the existing teaching event will be updated, otherwise a new teaching event will be created.
    # @param teaching_event [TeachingEvent] Teaching event to upsert.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TeachingEvent, Integer, Hash)>] TeachingEvent data, response status code and response headers
    def upsert_teaching_event_with_http_info(teaching_event, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeachingEventsApi.upsert_teaching_event ...'
      end
      # verify the required parameter 'teaching_event' is set
      if @api_client.config.client_side_validation && teaching_event.nil?
        fail ArgumentError, "Missing the required parameter 'teaching_event' when calling TeachingEventsApi.upsert_teaching_event"
      end
      # resource path
      local_var_path = '/api/teaching_events'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(teaching_event)

      # return_type
      return_type = opts[:debug_return_type] || 'TeachingEvent'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"TeachingEventsApi.upsert_teaching_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeachingEventsApi#upsert_teaching_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
