=begin
#Get into Teaching API - V1

#                              Provides a RESTful API for integrating with the Get into Teaching CRM.                              The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events).                              The GIT API aims to provide:                              * Simple, task-based RESTful APIs.                              * Message queueing (while the GIT CRM is offline for updates).                              * Validation to ensure consistency across services writing to the GIT CRM.                          

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for GetIntoTeachingApiClient::GetIntoTeachingApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GetIntoTeachingApi' do
  before do
    # run before each test
    @api_instance = GetIntoTeachingApiClient::GetIntoTeachingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetIntoTeachingApi' do
    it 'should create an instance of GetIntoTeachingApi' do
      expect(@api_instance).to be_instance_of(GetIntoTeachingApiClient::GetIntoTeachingApi)
    end
  end

  # unit tests for book_get_into_teaching_callback
  # Schedule a callback for the candidate.
  # Queues a candidate upsert job.
  # @param get_into_teaching_callback Candidate to book a callback for.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'book_get_into_teaching_callback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exchange_access_token_for_get_into_teaching_callback
  # Retrieves a pre-populated GetIntoTeachingCallback for the candidate.
  #                          Retrieves a pre-populated GetIntoTeachingCallback for the candidate. The &#x60;accessToken&#x60; is obtained from a                          &#x60;POST /candidates/access_tokens&#x60; request (you must also ensure the &#x60;ExistingCandidateRequest&#x60; payload you                          exchanged for your token matches the request payload here).
  # @param access_token Access token (PIN code).
  # @param existing_candidate_request Candidate access token request (must match an existing candidate).
  # @param [Hash] opts the optional parameters
  # @return [GetIntoTeachingCallback]
  describe 'exchange_access_token_for_get_into_teaching_callback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for matchback_get_into_teaching_callback
  # Perform a matchback operation to retrieve a pre-populated GetIntoTeachingCallback for the candidate.
  # Attempts to matchback against a known candidate and returns a pre-populated GetIntoTeachingCallback if a match is found.
  # @param existing_candidate_request Candidate details to matchback.
  # @param [Hash] opts the optional parameters
  # @return [GetIntoTeachingCallback]
  describe 'matchback_get_into_teaching_callback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
