# GetIntoTeachingApiClient::CandidateSchoolExperience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **school_urn** | **String** |  |  |
| **duration_of_placement_in_days** | **Integer** |  | [optional] |
| **date_of_school_experience** | **String** |  | [optional] |
| **teaching_subject_id** | **String** |  | [optional] |
| **notes** | **String** |  | [optional] |
| **school_name** | **String** |  | [optional] |
| **status** | **Integer** |  | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::CandidateSchoolExperience.new(
  school_urn: 123456,
  duration_of_placement_in_days: 5,
  date_of_school_experience: 2026-09-15,
  teaching_subject_id: 6b793433-cd1f-e911-a979-000d3a20838a,
  notes: Student showed great interest in mathematics.,
  school_name: Example High School,
  status: 222750000
)
```

