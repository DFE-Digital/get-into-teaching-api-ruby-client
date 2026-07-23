# GetIntoTeachingApiClient::TeacherTrainingAdviserSignUp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **date_of_birth** | **Date** |  |  |
| **address_telephone** | **String** |  | [optional] |
| **address_postcode** | **String** |  | [optional] |
| **country_id** | **String** |  |  |
| **degree_subject** | **String** |  | [optional] |
| **uk_degree_grade_id** | **Integer** |  | [optional] |
| **degree_status_id** | **Integer** |  | [optional] |
| **degree_type_id** | **Integer** |  | [optional] |
| **has_gcse_maths_and_english_id** | **Integer** |  | [optional] |
| **planning_to_retake_gcse_maths_and_english_id** | **Integer** |  | [optional] |
| **has_gcse_science_id** | **Integer** |  | [optional] |
| **planning_to_retake_gcse_science_id** | **Integer** |  | [optional] |
| **preferred_teaching_subject_id** | **String** |  | [optional] |
| **preferred_education_phase_id** | **Integer** |  | [optional] |
| **initial_teacher_training_year_id** | **Integer** |  | [optional] |
| **accepted_policy_id** | **String** |  |  |
| **type_id** | **Integer** |  |  |
| **channel_id** | **Integer** |  | [optional] |
| **candidate_id** | **String** |  | [optional] |
| **adviser_status_id** | **Integer** |  | [optional] |
| **qualification_id** | **String** |  | [optional] |
| **creation_channel_source_id** | **Integer** |  | [optional] |
| **creation_channel_service_id** | **Integer** |  | [optional] |
| **creation_channel_activity_id** | **Integer** |  | [optional] |
| **subject_taught_id** | **String** |  | [optional] |
| **past_teaching_position_id** | **String** |  | [optional] |
| **stage_taught_id** | **Integer** |  | [optional] |
| **degree_country** | **String** |  | [optional] |
| **phone_call_scheduled_at** | **Time** |  | [optional] |
| **teacher_id** | **String** |  | [optional] |
| **situation** | **Integer** |  | [optional] |
| **citizenship** | **Integer** |  | [optional] |
| **visa_status** | **Integer** |  | [optional] |
| **location** | **Integer** |  | [optional] |
| **graduation_year** | **Integer** |  | [optional] |
| **inferred_graduation_date** | **Date** |  | [optional] |
| **can_subscribe_to_teacher_training_adviser** | **Boolean** |  | [optional] |
| **assignment_status_id** | [**Int32**](Int32.md) |  | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::TeacherTrainingAdviserSignUp.new(
  email: johndoe@example.com,
  first_name: John,
  last_name: Doe,
  date_of_birth: Sat Jan 01 00:00:00 GMT 2000,
  address_telephone: 07735 111111,
  address_postcode:  BN1 1AA,
  country_id: 38ce2d0f-0b1f-ee11-9967-6045bd8c5762,
  degree_subject: Mathematics,
  uk_degree_grade_id: 222750001,
  degree_status_id: 222750000,
  degree_type_id: 222750000,
  has_gcse_maths_and_english_id: 222750000,
  planning_to_retake_gcse_maths_and_english_id: 222750001,
  has_gcse_science_id: 222750000,
  planning_to_retake_gcse_science_id: 222750001,
  preferred_teaching_subject_id: b02655a1-2afa-e811-a981-000d3a276620,
  preferred_education_phase_id: 222750000,
  initial_teacher_training_year_id: 222750001,
  accepted_policy_id: 4872c8ed-0229-f111-8342-7c1e5285e3ab,
  type_id: 222750000,
  channel_id: 222750049,
  candidate_id: d85a2f0b-290f-4931-98e2-e7d817ac38f3,
  adviser_status_id: 222750000,
  qualification_id: 13da3277-c8ba-4b64-a79e-b0a3960c26be,
  creation_channel_source_id: 222750000,
  creation_channel_service_id: 222750010,
  creation_channel_activity_id: 222750017,
  subject_taught_id: b02655a1-2afa-e811-a981-000d3a276620,
  past_teaching_position_id: 13da3277-c8ba-4b64-a79e-b0a3960c26be,
  stage_taught_id: 222750000,
  degree_country: 72f5c2e6-74f9-e811-a97a-000d3a2760f2,
  phone_call_scheduled_at: 2025-06-01T10:00Z,
  teacher_id: 1234567,
  situation: 222750000,
  citizenship: 222750000,
  visa_status: 222750000,
  location: 222750000,
  graduation_year: 2028,
  inferred_graduation_date: Sat Jan 01 00:00:00 GMT 2000,
  can_subscribe_to_teacher_training_adviser: false,
  assignment_status_id: 1234567
)
```

