# GetIntoTeachingApiClient::MailingListAddMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **candidate_id** | **String** |  | [optional] |
| **qualification_id** | **String** |  | [optional] |
| **accepted_policy_id** | **String** |  |  |
| **consideration_journey_stage_id** | **Integer** |  |  |
| **preferred_teaching_subject_id** | **String** |  |  |
| **email** | **String** |  |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **address_postcode** | **String** |  | [optional] |
| **degree_status_id** | **Integer** |  | [optional] |
| **graduation_year** | **Integer** |  | [optional] |
| **welcome_guide_variant** | **String** |  | [optional] |
| **channel_id** | **Integer** |  | [optional] |
| **creation_channel_source_id** | **Integer** |  | [optional] |
| **creation_channel_service_id** | **Integer** |  | [optional] |
| **creation_channel_activity_id** | **Integer** |  | [optional] |
| **situation** | **Integer** |  | [optional] |
| **citizenship** | **Integer** |  | [optional] |
| **visa_status** | **Integer** |  | [optional] |
| **location** | **Integer** |  | [optional] |
| **already_subscribed_to_events** | **Boolean** |  | [optional] |
| **already_subscribed_to_mailing_list** | **Boolean** |  | [optional] |
| **already_subscribed_to_teacher_training_adviser** | **Boolean** |  | [optional] |
| **inferred_graduation_date** | **String** |  | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::MailingListAddMember.new(
  candidate_id: d85a2f0b-290f-4931-98e2-e7d817ac38f3,
  qualification_id: 13da3277-c8ba-4b64-a79e-b0a3960c26be,
  accepted_policy_id: 4872c8ed-0229-f111-8342-7c1e5285e3ab,
  consideration_journey_stage_id: 222750000,
  preferred_teaching_subject_id: b02655a1-2afa-e811-a981-000d3a276620,
  email: johndoe@example.com,
  first_name: John,
  last_name: Doe,
  address_postcode: BN1 1AA,
  degree_status_id: 222750000,
  graduation_year: 2028,
  welcome_guide_variant: A,
  channel_id: 222750049,
  creation_channel_source_id: 222750000,
  creation_channel_service_id: 222750010,
  creation_channel_activity_id: 222750017,
  situation: 222750000,
  citizenship: 222750000,
  visa_status: 222750000,
  location: 222750000,
  already_subscribed_to_events: false,
  already_subscribed_to_mailing_list: false,
  already_subscribed_to_teacher_training_adviser: false,
  inferred_graduation_date: 2025-01-01
)
```

