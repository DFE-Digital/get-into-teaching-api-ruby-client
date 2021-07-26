=begin
#Get into Teaching API - V1

# Provides a RESTful API for integrating with the Get into Teaching CRM. The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events). The GIT API aims to provide: * Simple, task-based RESTful APIs. * Message queueing (while the GIT CRM is offline for updates). * Validation to ensure consistency across services writing to the GIT CRM.                         

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'

# Unit tests for GetIntoTeachingApiClient::GetIntoTeachingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetIntoTeachingApi' do
  before do
    # run before each test
    @instance = GetIntoTeachingApiClient::GetIntoTeachingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetIntoTeachingApi' do
    it 'should create an instance of GetIntoTeachingApi' do
      expect(@instance).to be_instance_of(GetIntoTeachingApiClient::GetIntoTeachingApi)
    end
  end

  # unit tests for book_get_into_teaching_callback
  # Schedule a callback for the candidate.
  # Queues a candidate upsert job.
  # @param body Candidate to book a callback for.
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
  # @param body Candidate access token request (must match an existing candidate).
  # @param [Hash] opts the optional parameters
  # @return [GetIntoTeachingCallback]
  describe 'exchange_access_token_for_get_into_teaching_callback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
