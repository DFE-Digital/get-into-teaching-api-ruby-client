# GetIntoTeachingApiClient::GetIntoTeachingCallback

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **candidate_id** | **String** | The candidate CRM identifier (optional). | [optional] |
| **accepted_policy_id** | **String** | The privacy policy identifier accepted by the candidate. |  |
| **email** | **String** | The candidate email address. |  |
| **first_name** | **String** | The candidate first name. |  |
| **last_name** | **String** | The candidate last name. |  |
| **address_telephone** | **String** | The candidate telephone number. |  |
| **phone_call_scheduled_at** | **Time** | The scheduled date and time for the callback. |  |
| **talking_points** | **String** | Notes on what the candidate would like to discuss. |  |
| **creation_channel_source_id** | **Integer** | The source of the creation channel. | [optional] |
| **creation_channel_service_id** | **Integer** | The service of the creation channel. | [optional] |
| **creation_channel_activity_id** | **Integer** | The activity of the creation channel. | [optional] |
| **default_contact_creation_channel** | **Integer** | The default contact creation channel. | [optional] |
| **default_creation_channel_source_id** | **Integer** | The default creation channel source. | [optional] |
| **default_creation_channel_service_id** | **Integer** | The default creation channel service. | [optional] |
| **default_creation_channel_activity_id** | **Integer** | The default creation channel activity. | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::GetIntoTeachingCallback.new(
  candidate_id: d85a2f0b-290f-4931-98e2-e7d817ac38f3,
  accepted_policy_id: 4872c8ed-0229-f111-8342-7c1e5285e3ab,
  email: johndoe@example.com,
  first_name: John,
  last_name: Doe,
  address_telephone: 07735 111111,
  phone_call_scheduled_at: 2026-06-16T14:00Z,
  talking_points: I would like to discuss teaching as a career.,
  creation_channel_source_id: 222750000,
  creation_channel_service_id: 222750010,
  creation_channel_activity_id: 222750017,
  default_contact_creation_channel: 222750027,
  default_creation_channel_source_id: 222750003,
  default_creation_channel_service_id: 222750010,
  default_creation_channel_activity_id: 222750017
)
```

