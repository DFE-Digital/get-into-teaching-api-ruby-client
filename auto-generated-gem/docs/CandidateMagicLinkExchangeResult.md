# GetIntoTeachingApiClient::CandidateMagicLinkExchangeResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Whether the magic link token exchange was successful. | [optional] |
| **status** | [**ExchangeStatus**](ExchangeStatus.md) |  | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::CandidateMagicLinkExchangeResult.new(
  success: false,
  status: null
)
```

