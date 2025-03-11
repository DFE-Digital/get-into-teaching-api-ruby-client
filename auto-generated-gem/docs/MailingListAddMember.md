# GetIntoTeachingApiClient::MailingListAddMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **candidate_id** | **String** |  | [optional] |
| **qualification_id** | **String** |  | [optional] |
| **preferred_teaching_subject_id** | **String** |  |  |
| **accepted_policy_id** | **String** |  |  |
| **consideration_journey_stage_id** | **Integer** |  |  |
| **degree_status_id** | **Integer** |  | [optional] |
| **channel_id** | **Integer** |  | [optional] |
| **email** | **String** |  |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **address_postcode** | **String** |  | [optional] |
| **welcome_guide_variant** | **String** |  | [optional] |
| **already_subscribed_to_events** | **Boolean** |  | [optional][readonly] |
| **already_subscribed_to_mailing_list** | **Boolean** |  | [optional][readonly] |
| **already_subscribed_to_teacher_training_adviser** | **Boolean** |  | [optional][readonly] |
| **graduation_year** | **Integer** |  | [optional] |
| **inferred_graduation_date** | **Time** |  | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::MailingListAddMember.new(
  candidate_id: null,
  qualification_id: null,
  preferred_teaching_subject_id: null,
  accepted_policy_id: null,
  consideration_journey_stage_id: null,
  degree_status_id: null,
  channel_id: null,
  email: null,
  first_name: null,
  last_name: null,
  address_postcode: null,
  welcome_guide_variant: null,
  already_subscribed_to_events: null,
  already_subscribed_to_mailing_list: null,
  already_subscribed_to_teacher_training_adviser: null,
  graduation_year: null,
  inferred_graduation_date: null
)
```

