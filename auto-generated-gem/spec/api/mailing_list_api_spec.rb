=begin
#Get into Teaching API - V1

# Provides a RESTful API for integrating with the Get into Teaching CRM. The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events). The GIT API aims to provide: * Simple, task-based RESTful APIs. * Message queueing (while the GIT CRM is offline for updates). * Validation to ensure consistency across services writing to the GIT CRM.                         

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.30
=end

require 'spec_helper'
require 'json'

# Unit tests for GetIntoTeachingApiClient::MailingListApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MailingListApi' do
  before do
    # run before each test
    @instance = GetIntoTeachingApiClient::MailingListApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MailingListApi' do
    it 'should create an instance of MailingListApi' do
      expect(@instance).to be_instance_of(GetIntoTeachingApiClient::MailingListApi)
    end
  end

  # unit tests for add_mailing_list_member
  # Adds a new member to the mailing list.
  #                  If the &#x60;CandidateId&#x60; is specified then the existing candidate will be                  added to the mailing list, otherwise a new candidate will be created.
  # @param body Member to add to the mailing list.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_mailing_list_member test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exchange_access_token_for_mailing_list_add_member
  # Retrieves a pre-populated MailingListAddMember for the candidate.
  #                  Retrieves a pre-populated MailingListAddMember for the candidate. The &#x60;accessToken&#x60; is obtained from a                  &#x60;POST /candidates/access_tokens&#x60; request (you must also ensure the &#x60;ExistingCandidateRequest&#x60; payload you                  exchanged for your token matches the request payload here).
  # @param body Candidate access token request (must match an existing candidate).
  # @param access_token Access token (PIN code).
  # @param [Hash] opts the optional parameters
  # @return [MailingListAddMember]
  describe 'exchange_access_token_for_mailing_list_add_member test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exchange_magic_link_token_for_mailing_list_add_member
  # Retrieves a pre-populated MailingListAddMember for the candidate.
  #                  Retrieves a pre-populated MailingListAddMember for the candidate. The &#x60;magicLinkToken&#x60; is obtained from a                  &#x60;POST /candidates/magic_link_tokens&#x60; request.
  # @param magic_link_token Magic link token.
  # @param [Hash] opts the optional parameters
  # @return [MailingListAddMember]
  describe 'exchange_magic_link_token_for_mailing_list_add_member test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
