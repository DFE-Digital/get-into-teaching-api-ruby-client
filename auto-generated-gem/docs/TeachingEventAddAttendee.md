# GetIntoTeachingApiClient::TeachingEventAddAttendee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The ID of the teaching event to add the attendee to. |  |
| **email** | **String** | The attendee&#39;s email address. |  |
| **first_name** | **String** | The attendee&#39;s first name. |  |
| **last_name** | **String** | The attendee&#39;s last name. |  |
| **accepted_policy_id** | **String** | The privacy policy identifier accepted by the attendee. |  |
| **candidate_id** | **String** | The candidate CRM identifier (optional). | [optional] |
| **qualification_id** | **String** | The qualification identifier. | [optional] |
| **channel_id** | **Integer** | The channel identifier. | [optional] |
| **creation_channel_source_id** | **Integer** | The source of the creation channel. | [optional] |
| **creation_channel_service_id** | **Integer** | The service of the creation channel. | [optional] |
| **creation_channel_activity_id** | **Integer** | The activity of the creation channel. | [optional] |
| **preferred_teaching_subject_id** | **String** | The preferred teaching subject identifier. | [optional] |
| **consideration_journey_stage_id** | **Integer** | The consideration journey stage identifier. | [optional] |
| **degree_status_id** | **Integer** | The degree status identifier. | [optional] |
| **address_postcode** | **String** | The attendee&#39;s postcode. | [optional] |
| **address_telephone** | **String** | The attendee&#39;s telephone number. | [optional] |
| **is_verified** | **Boolean** | Whether the attendee has been verified. | [optional] |
| **is_walk_in** | **Boolean** | Whether the attendee walked in without pre-registration. | [optional] |
| **subscribe_to_mailing_list** | **Boolean** | Whether the attendee wants to subscribe to the mailing list. | [optional] |
| **already_subscribed_to_events** | **Boolean** | Whether the attendee is already subscribed to events. | [optional] |
| **already_subscribed_to_mailing_list** | **Boolean** | Whether the attendee is already subscribed to the mailing list. | [optional] |
| **already_subscribed_to_teacher_training_adviser** | **Boolean** | Whether the attendee is already subscribed to the teacher training adviser service. | [optional] |
| **accessibility_needs_for_event** | **String** | Details of any accessibility needs for the event. | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::TeachingEventAddAttendee.new(
  event_id: 123e4567-e89b-12d3-a456-426614174000,
  email: johndoe@example.com,
  first_name: John,
  last_name: Doe,
  accepted_policy_id: 4872c8ed-0229-f111-8342-7c1e5285e3ab,
  candidate_id: d85a2f0b-290f-4931-98e2-e7d817ac38f3,
  qualification_id: 13da3277-c8ba-4b64-a79e-b0a3960c26be,
  channel_id: 222750049,
  creation_channel_source_id: 222750000,
  creation_channel_service_id: 222750010,
  creation_channel_activity_id: 222750017,
  preferred_teaching_subject_id: b02655a1-2afa-e811-a981-000d3a276620,
  consideration_journey_stage_id: 222750000,
  degree_status_id: 222750000,
  address_postcode: BN1 1AA,
  address_telephone: 07735 111111,
  is_verified: false,
  is_walk_in: false,
  subscribe_to_mailing_list: false,
  already_subscribed_to_events: false,
  already_subscribed_to_mailing_list: false,
  already_subscribed_to_teacher_training_adviser: false,
  accessibility_needs_for_event: Wheelchair accessible space required
)
```

