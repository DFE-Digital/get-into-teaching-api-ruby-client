# GetIntoTeachingApiClient::TeachingEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type_id** | **Integer** |  |  |
| **status_id** | **Integer** |  |  |
| **region_id** | **Integer** |  | [optional] |
| **readable_id** | **String** |  |  |
| **web_feed_id** | **String** | If set, the API will accept new attendees for this event (an external sign up should be used if this value is nil). | [optional] |
| **is_online** | **Boolean** |  |  |
| **name** | **String** |  |  |
| **summary** | **String** |  | [optional] |
| **message** | **String** | Used to push miscellaneous messages to users (e.g. if an event is close to being booked out). | [optional] |
| **description** | **String** |  | [optional] |
| **video_url** | **String** |  | [optional] |
| **scribble_id** | **String** |  | [optional] |
| **provider_website_url** | **String** |  | [optional] |
| **provider_target_audience** | **String** |  | [optional] |
| **provider_organiser** | **String** |  | [optional] |
| **provider_contact_email** | **String** |  | [optional] |
| **start_at** | **Time** |  |  |
| **end_at** | **Time** |  |  |
| **providers_list** | **String** |  | [optional] |
| **building** | [**TeachingEventBuilding**](TeachingEventBuilding.md) |  | [optional] |
| **is_virtual** | **Boolean** |  | [optional][readonly] |
| **accessibility_options** | **Array&lt;Integer&gt;** |  | [optional] |
| **is_in_person** | **Boolean** |  | [optional][readonly] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::TeachingEvent.new(
  id: 123e4567-e89b-12d3-a456-426614174000,
  type_id: 222750000,
  status_id: 222750001,
  region_id: 222750002,
  readable_id: 12345,
  web_feed_id: ABCDE,
  is_online: false,
  name: Get into Teaching - London,
  summary: An event for those interested in teaching.,
  message: Limited spaces remaining,
  description: A full description of the event.,
  video_url: https://www.youtube.com/watch?v&#x3D;example,
  scribble_id: scribble-123,
  provider_website_url: https://www.example.com,
  provider_target_audience: Aspiring teachers,
  provider_organiser: Jane Smith,
  provider_contact_email: jane.smith@example.com,
  start_at: 2026-07-15T10:00Z,
  end_at: 2026-07-15T16:00Z,
  providers_list: Provider A, Provider B,
  building: null,
  is_virtual: false,
  accessibility_options: [222750000,222750001],
  is_in_person: true
)
```

