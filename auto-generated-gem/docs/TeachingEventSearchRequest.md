# GetIntoTeachingApiClient::TeachingEventSearchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **postcode** | **String** | Postcode to center search around. | [optional] |
| **radius** | **Integer** | Set to filter results to a radius (in miles) around the postcode. | [optional] |
| **type_ids** | **Array&lt;Integer&gt;** | Set to filter results to a type of teaching event. Each ID must match a &#x60;typeId&#x60; of the &#x60;TeachingEvent&#x60; schema. | [optional] |
| **online** | **Boolean** | Set to true to return only online events and false to return only in-person events. | [optional] |
| **start_after** | **Time** | Set to filter results to those that start after a given date. | [optional] |
| **start_before** | **Time** | Set to filter results to those that start before a given date. | [optional] |
| **status_ids** | **Array&lt;Integer&gt;** | Set to filter results by event status. | [optional] |
| **accessibility_options** | **Array&lt;Integer&gt;** | Set to filter results by accessibility options. | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::TeachingEventSearchRequest.new(
  postcode: null,
  radius: null,
  type_ids: null,
  online: null,
  start_after: null,
  start_before: null,
  status_ids: null,
  accessibility_options: null
)
```

