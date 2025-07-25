# GetIntoTeachingApiClient::MailingListAddMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **degree_status_id** | **Integer** |  | [optional] |
| **candidate_id** | **String** |  | [optional] |
| **qualification_id** | **String** |  | [optional] |
| **preferred_teaching_subject_id** | **String** |  |  |
| **accepted_policy_id** | **String** |  |  |
| **consideration_journey_stage_id** | **Integer** |  |  |
| **channel_id** | **Integer** |  | [optional] |
| **creation_channel_source_id** | **Integer** |  | [optional] |
| **creation_channel_service_id** | **Integer** |  | [optional] |
| **creation_channel_activity_id** | **Integer** |  | [optional] |
| **email** | **String** |  |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **address_postcode** | **String** |  | [optional] |
| **welcome_guide_variant** | **String** |  | [optional] |
| **already_subscribed_to_events** | **Boolean** |  | [optional][readonly] |
| **already_subscribed_to_mailing_list** | **Boolean** |  | [optional][readonly] |
| **already_subscribed_to_teacher_training_adviser** | **Boolean** |  | [optional][readonly] |
| **default_contact_creation_channel** | **Integer** |  | [optional][readonly] |
| **default_creation_channel_source_id** | **Integer** |  | [optional][readonly] |
| **default_creation_channel_service_id** | **Integer** |  | [optional][readonly] |
| **default_creation_channel_activity_id** | **Integer** |  | [optional][readonly] |
| **situation** | **Integer** |  | [optional] |
| **graduation_year** | **Integer** |  | [optional] |
| **inferred_graduation_date** | **Time** |  | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::MailingListAddMember.new(
  degree_status_id: null,
  candidate_id: null,
  qualification_id: null,
  preferred_teaching_subject_id: null,
  accepted_policy_id: null,
  consideration_journey_stage_id: null,
  channel_id: null,
  creation_channel_source_id: null,
  creation_channel_service_id: null,
  creation_channel_activity_id: null,
  email: null,
  first_name: null,
  last_name: null,
  address_postcode: null,
  welcome_guide_variant: null,
  already_subscribed_to_events: null,
  already_subscribed_to_mailing_list: null,
  already_subscribed_to_teacher_training_adviser: null,
  default_contact_creation_channel: null,
  default_creation_channel_source_id: null,
  default_creation_channel_service_id: null,
  default_creation_channel_activity_id: null,
  situation: null,
  graduation_year: null,
  inferred_graduation_date: null
)
```

