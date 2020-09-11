=begin
#Get into Teaching API - V1

#  Provides a RESTful API for integrating with the Get into Teaching CRM.    The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events).    The GIT API aims to provide:    * Simple, task-based RESTful APIs.  * Message queueing (while the GIT CRM is offline for updates).  * Validation to ensure consistency across services writing to the GIT CRM.                          

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'

# Unit tests for GetIntoTeachingApiClient::TypesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TypesApi' do
  before do
    # run before each test
    @instance = GetIntoTeachingApiClient::TypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TypesApi' do
    it 'should create an instance of TypesApi' do
      expect(@instance).to be_instance_of(GetIntoTeachingApiClient::TypesApi)
    end
  end

  # unit tests for get_candidate_adviser_eligibilities
  # Retrieves the list of candidate adviser eligibilities.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_candidate_adviser_eligibilities test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_candidate_adviser_requirements
  # Retrieves the list of candidate adviser requirements.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_candidate_adviser_requirements test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_candidate_assignment_status
  # Retrieves the list of candidate assignment status.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_candidate_assignment_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_candidate_channels
  # Retrieves the list of candidate channels.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_candidate_channels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_candidate_event_subscription_channels
  # Retrieves the list of candidate event subscription channels.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_candidate_event_subscription_channels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_candidate_gcse_status
  # Retrieves the list of candidate GCSE status.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_candidate_gcse_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_candidate_initial_teacher_training_years
  # Retrieves the list of candidate initial teacher training years.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_candidate_initial_teacher_training_years test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_candidate_journey_stages
  # Retrieves the list of candidate consideration journey stages.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_candidate_journey_stages test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_candidate_mailing_list_subscription_channels
  # Retrieves the list of candidate mailing list subscription channels.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_candidate_mailing_list_subscription_channels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_candidate_preferred_education_phases
  # Retrieves the list of candidate preferred education phases.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_candidate_preferred_education_phases test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_candidate_retake_gcse_status
  # Retrieves the list of candidate retake GCSE status.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_candidate_retake_gcse_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_candidate_types
  # Retrieves the list of candidate types.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_candidate_types test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_country_types
  # Retrieves the list of countries.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_country_types test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_past_teaching_position_education_phases
  # Retrieves the list of past teaching position education phases.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_past_teaching_position_education_phases test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_phone_call_channels
  # Retrieves the list of phone call channels.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_phone_call_channels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_qualification_degree_status
  # Retrieves the list of qualification degree status.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_qualification_degree_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_qualification_types
  # Retrieves the list of qualification types.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_qualification_types test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_qualification_uk_degree_grades
  # Retrieves the list of qualification UK degree grades.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_qualification_uk_degree_grades test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_subscription_types
  # Retrieves the list of subscription types.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_subscription_types test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_teaching_event_registration_channels
  # Retrieves the list of teaching event registration channels.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_teaching_event_registration_channels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_teaching_event_status
  # Retrieves the list of teaching event status.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_teaching_event_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_teaching_event_types
  # Retrieves the list of teaching event types.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_teaching_event_types test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_teaching_subjects
  # Retrieves the list of teaching subjects.
  # @param [Hash] opts the optional parameters
  # @return [Array<TypeEntity>]
  describe 'get_teaching_subjects test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
