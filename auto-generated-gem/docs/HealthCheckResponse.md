# GetIntoTeachingApiClient::HealthCheckResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **git_commit_sha** | **String** |  | [optional] |
| **environment** | **String** |  | [optional] |
| **database** | **String** |  | [optional] |
| **hangfire** | **String** |  | [optional] |
| **crm** | **String** |  | [optional] |
| **redis** | **String** |  | [optional] |
| **notify** | **String** |  | [optional] |
| **status** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::HealthCheckResponse.new(
  git_commit_sha: null,
  environment: null,
  database: null,
  hangfire: null,
  crm: null,
  redis: null,
  notify: null,
  status: null
)
```

