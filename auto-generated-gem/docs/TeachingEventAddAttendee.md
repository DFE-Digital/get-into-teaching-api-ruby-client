# GetIntoTeachingApiClient::TeachingEventAddAttendee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **candidate_id** | **String** |  | [optional] |
| **qualification_id** | **String** |  | [optional] |
| **event_id** | **String** |  |  |
| **channel_id** | **Integer** |  | [optional] |
| **creation_channel_source_id** | **Integer** |  | [optional] |
| **creation_channel_service_id** | **Integer** |  | [optional] |
| **creation_channel_activity_id** | **Integer** |  | [optional] |
| **accepted_policy_id** | **String** |  |  |
| **preferred_teaching_subject_id** | **String** |  | [optional] |
| **consideration_journey_stage_id** | **Integer** |  | [optional] |
| **degree_status_id** | **Integer** |  | [optional] |
| **email** | **String** |  |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **address_postcode** | **String** |  | [optional] |
| **address_telephone** | **String** |  | [optional] |
| **is_verified** | **Boolean** |  | [optional] |
| **is_walk_in** | **Boolean** |  | [optional] |
| **subscribe_to_mailing_list** | **Boolean** |  | [optional] |
| **already_subscribed_to_events** | **Boolean** |  | [optional][readonly] |
| **already_subscribed_to_mailing_list** | **Boolean** |  | [optional][readonly] |
| **already_subscribed_to_teacher_training_adviser** | **Boolean** |  | [optional][readonly] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::TeachingEventAddAttendee.new(
  candidate_id: null,
  qualification_id: null,
  event_id: null,
  channel_id: null,
  creation_channel_source_id: null,
  creation_channel_service_id: null,
  creation_channel_activity_id: null,
  accepted_policy_id: null,
  preferred_teaching_subject_id: null,
  consideration_journey_stage_id: null,
  degree_status_id: null,
  email: null,
  first_name: null,
  last_name: null,
  address_postcode: null,
  address_telephone: null,
  is_verified: null,
  is_walk_in: null,
  subscribe_to_mailing_list: null,
  already_subscribed_to_events: null,
  already_subscribed_to_mailing_list: null,
  already_subscribed_to_teacher_training_adviser: null
)
```

