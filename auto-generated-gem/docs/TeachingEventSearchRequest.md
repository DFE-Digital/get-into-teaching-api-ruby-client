# GetIntoTeachingApiClient::TeachingEventSearchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **postcode** | **String** | Postcode to center search around. | [optional] |
| **radius** | **Integer** | Radius in miles to search around the postcode. | [optional] |
| **type_ids** | **Array&lt;Integer&gt;** | Filter by teaching event type IDs. | [optional] |
| **online** | **Boolean** | Set to true for online events, false for in-person events. | [optional] |
| **start_after** | **Time** | Filter to events starting after this date. | [optional] |
| **start_before** | **Time** | Filter to events starting before this date. | [optional] |
| **status_ids** | **Array&lt;Integer&gt;** | Filter by event status IDs. | [optional] |
| **accessibility_options** | **Array&lt;Integer&gt;** | Filter by accessibility option IDs. | [optional] |
| **quantity** | **Integer** | Maximum number of results to return. | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::TeachingEventSearchRequest.new(
  postcode: SW1A 1AA,
  radius: 10,
  type_ids: [222750000,222750001],
  online: false,
  start_after: 2026-07-01T00:00Z,
  start_before: 2026-08-01T00:00Z,
  status_ids: [222750001],
  accessibility_options: [222750000],
  quantity: 10
)
```

