# GetIntoTeachingApiClient::ExistingCandidateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **date_of_birth** | **Time** |  | [optional] |
| **reference** | **String** |  | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::ExistingCandidateRequest.new(
  email: johndoe@example.com,
  first_name: John,
  last_name: Doe,
  date_of_birth: null,
  reference: ABC123
)
```

