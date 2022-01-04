# GetIntoTeachingApiClient::CallbackBookingQuota

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **time_slot** | **String** |  | [optional] |
| **day** | **String** |  | [optional] |
| **start_at** | **Time** |  | [optional] |
| **end_at** | **Time** |  | [optional] |
| **number_of_bookings** | **Integer** |  | [optional] |
| **quota** | **Integer** |  | [optional] |
| **is_available** | **Boolean** |  | [optional][readonly] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::CallbackBookingQuota.new(
  id: null,
  time_slot: null,
  day: null,
  start_at: null,
  end_at: null,
  number_of_bookings: null,
  quota: null,
  is_available: null
)
```

