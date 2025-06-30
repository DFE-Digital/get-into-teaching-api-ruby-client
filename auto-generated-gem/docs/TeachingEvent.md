# GetIntoTeachingApiClient::TeachingEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type_id** | **Integer** |  | [optional] |
| **status_id** | **Integer** |  | [optional] |
| **region_id** | **Integer** |  | [optional] |
| **readable_id** | **String** |  |  |
| **web_feed_id** | **String** | If set, the API will accept new attendees for this event (an external sign up should be used if this value is nil). | [optional] |
| **is_online** | **Boolean** |  | [optional] |
| **name** | **String** |  |  |
| **summary** | **String** |  | [optional] |
| **message** | **String** | Used to push miscellaneous messages to users (if an event is close to being booked out, for example). | [optional] |
| **description** | **String** |  | [optional] |
| **video_url** | **String** |  | [optional] |
| **scribble_id** | **String** |  | [optional] |
| **provider_website_url** | **String** |  | [optional] |
| **provider_target_audience** | **String** |  | [optional] |
| **provider_organiser** | **String** |  | [optional] |
| **provider_contact_email** | **String** |  | [optional] |
| **start_at** | **Time** |  | [optional] |
| **end_at** | **Time** |  | [optional] |
| **providers_list** | **String** |  | [optional] |
| **building** | [**TeachingEventBuilding**](TeachingEventBuilding.md) |  | [optional] |
| **is_virtual** | **Boolean** |  | [optional][readonly] |
| **accessibility_options** | **Array&lt;Integer&gt;** |  | [optional] |
| **is_in_person** | **Boolean** |  | [optional][readonly] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::TeachingEvent.new(
  id: null,
  type_id: null,
  status_id: null,
  region_id: null,
  readable_id: null,
  web_feed_id: null,
  is_online: null,
  name: null,
  summary: null,
  message: null,
  description: null,
  video_url: null,
  scribble_id: null,
  provider_website_url: null,
  provider_target_audience: null,
  provider_organiser: null,
  provider_contact_email: null,
  start_at: null,
  end_at: null,
  providers_list: null,
  building: null,
  is_virtual: null,
  accessibility_options: null,
  is_in_person: null
)
```

