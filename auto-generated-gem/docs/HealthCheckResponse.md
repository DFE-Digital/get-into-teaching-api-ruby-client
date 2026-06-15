# GetIntoTeachingApiClient::HealthCheckResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **git_commit_sha** | **String** | The Git commit SHA of the deployed version. | [optional] |
| **environment** | **String** | The deployment environment. | [optional] |
| **database** | **String** | The database connection status. | [optional] |
| **hangfire** | **String** | The Hangfire job server status. | [optional] |
| **crm** | **String** | The CRM connection status. | [optional] |
| **redis** | **String** | The Redis connection status. | [optional] |
| **notify** | **String** | The GOV.UK Notify service status. | [optional] |
| **status** | **String** | The overall health status. | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::HealthCheckResponse.new(
  git_commit_sha: abc123def456,
  environment: production,
  database: ok,
  hangfire: ok,
  crm: ok,
  redis: ok,
  notify: ok,
  status: healthy
)
```

