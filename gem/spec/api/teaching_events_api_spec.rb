=begin
#Get into Teaching API - V1

#  Provides a RESTful API for integrating with the Get into Teaching CRM.    The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events).    The GIT API aims to provide:    * Simple, task-based RESTful APIs.  * Message queueing (while the GIT CRM is offline for updates).  * Validation to ensure consistency across services writing to the GIT CRM.                          

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

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
  # If the &#x60;CandidateId&#x60; is specified then the existing candidate will be registered for the event, otherwise a new candidate will be created.
  # @param id The &#x60;id&#x60; of the &#x60;TeachingEvent&#x60;.
  # @param body Attendee to add to the teaching event.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_teaching_event_attendee test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_teaching_event
  # Retrieves an event.
  # @param id The &#x60;id&#x60; of the &#x60;TeachingEvent&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [TeachingEvent]
  describe 'get_teaching_event test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_upcoming_teaching_events
  # Retrieves the upcoming teaching events.
  #   Retrieves the upcoming teaching events; limited to 10 by default, but this can be increased to a   maximum of 50 using the &#x60;limit&#x60; query parameter.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of results to return (maximum of 50).
  # @return [Array<TeachingEvent>]
  describe 'get_upcoming_teaching_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_teaching_events
  # Searches for teaching events.
  # Searches for teaching events by postcode. Optionally limit the results by distance (in miles) and the type of event.
  # @param postcode 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :radius 
  # @option opts [Integer] :type_id 
  # @option opts [DateTime] :start_after 
  # @option opts [DateTime] :start_before 
  # @option opts [Float] :radius_in_km 
  # @return [Array<TeachingEvent>]
  describe 'search_teaching_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
