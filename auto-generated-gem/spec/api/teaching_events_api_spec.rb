=begin
#Get into Teaching API - V1

# Provides a RESTful API for integrating with the Get into Teaching CRM. The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events). The GIT API aims to provide: * Simple, task-based RESTful APIs. * Message queueing (while the GIT CRM is offline for updates). * Validation to ensure consistency across services writing to the GIT CRM.                         

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.30
=end

require 'spec_helper'
require 'json'

# Unit tests for GetIntoTeachingApiClient::TeachingEventsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TeachingEventsApi' do
  before do
    # run before each test
    @instance = GetIntoTeachingApiClient::TeachingEventsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TeachingEventsApi' do
    it 'should create an instance of TeachingEventsApi' do
      expect(@instance).to be_instance_of(GetIntoTeachingApiClient::TeachingEventsApi)
    end
  end

  # unit tests for add_teaching_event_attendee
  # Adds an attendee to a teaching event.
  #                  If the &#x60;CandidateId&#x60; is specified then the existing candidate will be                  registered for the event, otherwise a new candidate will be created.
  # @param body Attendee to add to the teaching event.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_teaching_event_attendee test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exchange_access_token_for_teaching_event_add_attendee
  # Retrieves a pre-populated TeachingEventAddAttendee for the candidate.
  #                  Retrieves a pre-populated TeachingEventAddAttendee for the candidate. The &#x60;accessToken&#x60; is obtained from a                  &#x60;POST /candidates/access_tokens&#x60; request (you must also ensure the &#x60;ExistingCandidateRequest&#x60; payload you                  exchanged for your token matches the request payload here).
  # @param body Candidate access token request (must match an existing candidate).
  # @param access_token Access token (PIN code).
  # @param [Hash] opts the optional parameters
  # @return [TeachingEventAddAttendee]
  describe 'exchange_access_token_for_teaching_event_add_attendee test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exchange_unverified_request_for_teaching_event_add_attendee
  # Retrieves a pre-populated TeachingEventAddAttendee for the candidate (allowing to proceed as unverified).
  #                          Retrieves a pre-populated TeachingEventAddAttendee for the candidate. This mechanism should be used with caution                         and the candidate should be treated as &#x27;unverified&#x27; by the client.
  # @param body Candidate access token request (must match an existing candidate).
  # @param [Hash] opts the optional parameters
  # @return [TeachingEventAddAttendee]
  describe 'exchange_unverified_request_for_teaching_event_add_attendee test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_teaching_event
  # Retrieves an event.
  # @param readable_id The &#x60;readableId&#x60; of the &#x60;TeachingEvent&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [TeachingEvent]
  describe 'get_teaching_event test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_teaching_events_grouped_by_type
  # Searches for teaching events, returning grouped by type.
  # Searches for teaching events. Optionally limit the results by distance (in miles) from a postcode, event type and start date.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :postcode 
  # @option opts [Integer] :radius 
  # @option opts [Array<Integer>] :type_ids 
  # @option opts [BOOLEAN] :online 
  # @option opts [DateTime] :start_after 
  # @option opts [DateTime] :start_before 
  # @option opts [Array<Integer>] :status_ids 
  # @option opts [Integer] :quantity_per_type Quantity to return (per type).
  # @return [Array<TeachingEventsByType>]
  describe 'search_teaching_events_grouped_by_type test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upsert_teaching_event
  # Adds or updates a teaching event.
  # If the &#x60;id&#x60; is specified then the existing teaching event will be updated, otherwise a new teaching event will be created.
  # @param body Teaching event to upsert.
  # @param [Hash] opts the optional parameters
  # @return [TeachingEvent]
  describe 'upsert_teaching_event test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
