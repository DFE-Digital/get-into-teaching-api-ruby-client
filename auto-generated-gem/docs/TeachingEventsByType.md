# GetIntoTeachingApiClient::TeachingEventsByType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type_id** | **Integer** |  | [optional] |
| **teaching_events** | [**Array&lt;TeachingEvent&gt;**](TeachingEvent.md) |  | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::TeachingEventsByType.new(
  type_id: null,
  teaching_events: null
)
```

