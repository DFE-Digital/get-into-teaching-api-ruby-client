# GetIntoTeachingApiClient::CallbackBookingQuota

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **time_slot** | **String** |  |  |
| **day** | **String** |  |  |
| **start_at** | **Time** |  |  |
| **end_at** | **Time** |  |  |
| **number_of_bookings** | **Integer** |  |  |
| **quota** | **Integer** |  |  |
| **is_available** | **Boolean** |  |  |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::CallbackBookingQuota.new(
  id: 27d74cc7-7fa3-f011-bbd3-000d3a384b51,
  time_slot: 9:30am - 10am,
  day: Thursday 30 April,
  start_at: 2026-04-30T08:30Z,
  end_at: 2026-04-30T09:00Z,
  number_of_bookings: 0,
  quota: 20,
  is_available: true
)
```

