# GetIntoTeachingApiClient::ProblemDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | A URI reference that identifies the problem type. | [optional] |
| **title** | **String** | A short, human-readable summary of the problem. | [optional] |
| **status** | **Integer** | The HTTP status code. | [optional] |
| **detail** | **String** | A human-readable explanation of the problem. | [optional] |
| **instance** | **String** | A URI reference that identifies the specific occurrence. | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::ProblemDetails.new(
  type: https://tools.ietf.org/html/rfc7231#section-6.5.1,
  title: Bad Request,
  status: 400,
  detail: The request was invalid.,
  instance: /api/teaching_events/search
)
```

