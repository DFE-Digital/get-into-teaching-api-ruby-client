# GetIntoTeachingApiClient::SchoolsExperienceSignUp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **candidate_id** | **String** |  | [optional] |
| **preferred_teaching_subject_id** | **String** |  |  |
| **secondary_preferred_teaching_subject_id** | **String** |  | [optional] |
| **accepted_policy_id** | **String** |  |  |
| **master_id** | **String** |  | [optional][readonly] |
| **merged** | **Boolean** |  | [optional][readonly] |
| **full_name** | **String** |  | [optional][readonly] |
| **email** | **String** |  |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **address_line1** | **String** |  |  |
| **address_line2** | **String** |  | [optional] |
| **address_line3** | **String** |  | [optional] |
| **address_city** | **String** |  |  |
| **address_state_or_province** | **String** |  |  |
| **address_postcode** | **String** |  |  |
| **telephone** | **String** |  |  |
| **has_dbs_certificate** | **Boolean** |  |  |
| **dbs_certificate_issued_at** | **Time** |  | [optional] |
| **qualification_id** | **String** |  | [optional] |
| **degree_status_id** | **Integer** |  | [optional] |
| **degree_type_id** | **Integer** |  | [optional] |
| **degree_subject** | **String** |  | [optional] |
| **uk_degree_grade_id** | **Integer** |  | [optional] |
| **creation_channel_source_id** | **Integer** |  | [optional] |
| **creation_channel_service_id** | **Integer** |  | [optional] |
| **creation_channel_activity_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::SchoolsExperienceSignUp.new(
  candidate_id: null,
  preferred_teaching_subject_id: null,
  secondary_preferred_teaching_subject_id: null,
  accepted_policy_id: null,
  master_id: null,
  merged: null,
  full_name: null,
  email: null,
  first_name: null,
  last_name: null,
  address_line1: null,
  address_line2: null,
  address_line3: null,
  address_city: null,
  address_state_or_province: null,
  address_postcode: null,
  telephone: null,
  has_dbs_certificate: null,
  dbs_certificate_issued_at: null,
  qualification_id: null,
  degree_status_id: null,
  degree_type_id: null,
  degree_subject: null,
  uk_degree_grade_id: null,
  creation_channel_source_id: null,
  creation_channel_service_id: null,
  creation_channel_activity_id: null
)
```

