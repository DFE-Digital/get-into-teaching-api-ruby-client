=begin
#Get into Teaching API - V1

#  Provides a RESTful API for integrating with the Get into Teaching CRM.    The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events).    The GIT API aims to provide:    * Simple, task-based RESTful APIs.  * Message queueing (while the GIT CRM is offline for updates).  * Validation to ensure consistency across services writing to the GIT CRM.                          

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'spec_helper'
require 'json'

# Unit tests for GetIntoTeachingApiClient::LookupItemsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LookupItemsApi' do
  before do
    # run before each test
    @instance = GetIntoTeachingApiClient::LookupItemsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LookupItemsApi' do
    it 'should create an instance of LookupItemsApi' do
      expect(@instance).to be_instance_of(GetIntoTeachingApiClient::LookupItemsApi)
    end
  end

  # unit tests for get_countries
  # Retrieves the list of countries.
  # @param [Hash] opts the optional parameters
  # @return [Array<LookupItem>]
  describe 'get_countries test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_teaching_subjects
  # Retrieves the list of teaching subjects.
  # @param [Hash] opts the optional parameters
  # @return [Array<LookupItem>]
  describe 'get_teaching_subjects test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end