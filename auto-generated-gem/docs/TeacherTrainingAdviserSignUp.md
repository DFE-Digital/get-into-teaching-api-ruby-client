# GetIntoTeachingApiClient::TeacherTrainingAdviserSignUp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **candidate_id** | **String** |  | [optional] |
| **qualification_id** | **String** |  | [optional] |
| **subject_taught_id** | **String** |  | [optional] |
| **past_teaching_position_id** | **String** |  | [optional] |
| **preferred_teaching_subject_id** | **String** |  | [optional] |
| **country_id** | **String** |  |  |
| **accepted_policy_id** | **String** |  |  |
| **type_id** | **Integer** |  |  |
| **uk_degree_grade_id** | **Integer** |  | [optional] |
| **degree_status_id** | **Integer** |  | [optional] |
| **degree_type_id** | **Integer** |  | [optional] |
| **initial_teacher_training_year_id** | **Integer** |  | [optional] |
| **stage_taught_id** | **Integer** |  | [optional] |
| **preferred_education_phase_id** | **Integer** |  | [optional] |
| **has_gcse_maths_and_english_id** | **Integer** |  | [optional] |
| **has_gcse_science_id** | **Integer** |  | [optional] |
| **planning_to_retake_gcse_maths_and_english_id** | **Integer** |  | [optional] |
| **planning_to_retake_gcse_science_id** | **Integer** |  | [optional] |
| **adviser_status_id** | **Integer** |  | [optional] |
| **channel_id** | **Integer** |  | [optional] |
| **email** | **String** |  |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **date_of_birth** | **Date** |  |  |
| **teacher_id** | **String** |  | [optional] |
| **degree_subject** | **String** |  | [optional] |
| **address_telephone** | **String** |  | [optional] |
| **address_postcode** | **String** |  | [optional] |
| **phone_call_scheduled_at** | **Time** |  | [optional] |
| **can_subscribe_to_teacher_training_adviser** | **Boolean** |  | [optional][readonly] |
| **assignment_status_id** | **Integer** |  | [optional][readonly] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::TeacherTrainingAdviserSignUp.new(
  candidate_id: null,
  qualification_id: null,
  subject_taught_id: null,
  past_teaching_position_id: null,
  preferred_teaching_subject_id: null,
  country_id: null,
  accepted_policy_id: null,
  type_id: null,
  uk_degree_grade_id: null,
  degree_status_id: null,
  degree_type_id: null,
  initial_teacher_training_year_id: null,
  stage_taught_id: null,
  preferred_education_phase_id: null,
  has_gcse_maths_and_english_id: null,
  has_gcse_science_id: null,
  planning_to_retake_gcse_maths_and_english_id: null,
  planning_to_retake_gcse_science_id: null,
  adviser_status_id: null,
  channel_id: null,
  email: null,
  first_name: null,
  last_name: null,
  date_of_birth: null,
  teacher_id: null,
  degree_subject: null,
  address_telephone: null,
  address_postcode: null,
  phone_call_scheduled_at: null,
  can_subscribe_to_teacher_training_adviser: null,
  assignment_status_id: null
)
```

