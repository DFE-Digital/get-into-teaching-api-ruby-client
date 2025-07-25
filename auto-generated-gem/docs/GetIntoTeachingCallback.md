# GetIntoTeachingApiClient::GetIntoTeachingCallback

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **candidate_id** | **String** |  | [optional] |
| **accepted_policy_id** | **String** |  |  |
| **email** | **String** |  |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **address_telephone** | **String** |  |  |
| **phone_call_scheduled_at** | **Time** |  |  |
| **talking_points** | **String** |  |  |
| **creation_channel_source_id** | **Integer** |  | [optional] |
| **creation_channel_service_id** | **Integer** |  | [optional] |
| **creation_channel_activity_id** | **Integer** |  | [optional] |
| **default_contact_creation_channel** | **Integer** |  | [optional][readonly] |
| **default_creation_channel_source_id** | **Integer** |  | [optional][readonly] |
| **default_creation_channel_service_id** | **Integer** |  | [optional][readonly] |
| **default_creation_channel_activity_id** | **Integer** |  | [optional][readonly] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::GetIntoTeachingCallback.new(
  candidate_id: null,
  accepted_policy_id: null,
  email: null,
  first_name: null,
  last_name: null,
  address_telephone: null,
  phone_call_scheduled_at: null,
  talking_points: null,
  creation_channel_source_id: null,
  creation_channel_service_id: null,
  creation_channel_activity_id: null,
  default_contact_creation_channel: null,
  default_creation_channel_source_id: null,
  default_creation_channel_service_id: null,
  default_creation_channel_activity_id: null
)
```

