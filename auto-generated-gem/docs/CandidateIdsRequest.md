# GetIntoTeachingApiClient::CandidateIdsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **candidate_ids** | **Array&lt;Integer&gt;** | The candidate IDs to backfill. | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::CandidateIdsRequest.new(
  candidate_ids: [123,456,789]
)
```

