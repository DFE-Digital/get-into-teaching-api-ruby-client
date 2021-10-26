=begin
#Get into Teaching API - V1

# Provides a RESTful API for integrating with the Get into Teaching CRM. The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events). The GIT API aims to provide: * Simple, task-based RESTful APIs. * Message queueing (while the GIT CRM is offline for updates). * Validation to ensure consistency across services writing to the GIT CRM.                         

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.23

=end

require 'spec_helper'
require 'json'

# Unit tests for GetIntoTeachingApiClient::CandidatesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CandidatesApi' do
  before do
    # run before each test
    @instance = GetIntoTeachingApiClient::CandidatesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CandidatesApi' do
    it 'should create an instance of CandidatesApi' do
      expect(@instance).to be_instance_of(GetIntoTeachingApiClient::CandidatesApi)
    end
  end

  # unit tests for create_candidate_access_token
  # Creates a candidate access token.
  #                   Finds a candidate matching at least 3 of the provided CandidateAccessTokenRequest attributes (including email).                   If a candidate is found, an access token (PIN code) will be sent to the candidate email address                   that can then be used for verification.
  # @param body Candidate access token request (must match an existing candidate).
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_candidate_access_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
