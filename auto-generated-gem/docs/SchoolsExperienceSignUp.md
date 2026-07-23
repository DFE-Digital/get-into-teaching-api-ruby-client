# GetIntoTeachingApiClient::SchoolsExperienceSignUp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **preferred_teaching_subject_id** | **String** |  |  |
| **secondary_preferred_teaching_subject_id** | **String** |  | [optional] |
| **address_line1** | **String** |  |  |
| **address_line2** | **String** |  | [optional] |
| **address_line3** | **String** |  | [optional] |
| **address_city** | **String** |  |  |
| **address_state_or_province** | **String** |  |  |
| **address_postcode** | **String** |  |  |
| **telephone** | **String** |  |  |
| **has_dbs_certificate** | **Boolean** |  |  |
| **dbs_certificate_issued_at** | **String** |  | [optional] |
| **qualification_id** | **String** |  | [optional] |
| **degree_status_id** | [**Int32**](Int32.md) |  | [optional] |
| **degree_type_id** | [**Int32**](Int32.md) |  | [optional] |
| **degree_subject** | **String** |  | [optional] |
| **uk_degree_grade_id** | [**Int32**](Int32.md) |  | [optional] |
| **candidate_id** | **String** |  | [optional] |
| **creation_channel_source_id** | **String** |  | [optional] |
| **creation_channel_service_id** | **String** |  | [optional] |
| **creation_channel_activity_id** | **String** |  | [optional] |
| **accepted_policy_id** | **String** |  |  |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::SchoolsExperienceSignUp.new(
  email: johndoe@example.com,
  first_name: John,
  last_name: Doe,
  preferred_teaching_subject_id: 6b793433-cd1f-e911-a979-000d3a20838a,
  secondary_preferred_teaching_subject_id: 822655a1-2afa-e811-a981-000d3a276620,
  address_line1: 123 Main St,
  address_line2: Apt 4B,
  address_line3: Little Whinging,
  address_city: London,
  address_state_or_province: London,
  address_postcode: SW1A 1AA,
  telephone: 01234567890,
  has_dbs_certificate: true,
  dbs_certificate_issued_at: 2024-01-15,
  qualification_id: qual-1,
  degree_status_id: 222750000,
  degree_type_id: 222750002,
  degree_subject: Mathematics,
  uk_degree_grade_id: 222750002,
  candidate_id: candidate-1,
  creation_channel_source_id: source-1,
  creation_channel_service_id: service-1,
  creation_channel_activity_id: activity-1,
  accepted_policy_id: 4872c8ed-0229-f111-8342-7c1e5285e3ab
)
```

