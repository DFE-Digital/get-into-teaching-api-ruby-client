=begin
#Get into Teaching API - V1

#  Provides a RESTful API for integrating with the Get into Teaching CRM.    The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events).    The GIT API aims to provide:    * Simple, task-based RESTful APIs.  * Message queueing (while the GIT CRM is offline for updates).  * Validation to ensure consistency across services writing to the GIT CRM.                          

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'

# Unit tests for GetIntoTeachingApiClient::OperationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OperationsApi' do
  before do
    # run before each test
    @instance = GetIntoTeachingApiClient::OperationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OperationsApi' do
    it 'should create an instance of OperationsApi' do
      expect(@instance).to be_instance_of(GetIntoTeachingApiClient::OperationsApi)
    end
  end

  # unit tests for generate_mapping_info
  # Generates the mapping information.
  # Generates the mapping information describing how the models in the API map to the corresponding entities in Dynamics 365.
  # @param [Hash] opts the optional parameters
  # @return [Array<MappingInfo>]
  describe 'generate_mapping_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for health_check
  # Performs a health check.
  # @param [Hash] opts the optional parameters
  # @return [HealthCheckResponse]
  describe 'health_check test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for pause_crm_integration
  # Temporarily pauses the integration with the CRM.
  # The CRM is taken offline for updates occasionally; this can result in errors when the API attempts to call out to the CRM. The CRM can call this endpoint to pause the API -&gt; CRM integration (if not manually resumed it will auto-resume in 6 hours).
  # @param [Hash] opts the optional parameters
  # @return [HealthCheckResponse]
  describe 'pause_crm_integration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for resume_crm_integration
  # Resumes the integration with the CRM (after being paused).
  # @param [Hash] opts the optional parameters
  # @return [HealthCheckResponse]
  describe 'resume_crm_integration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
