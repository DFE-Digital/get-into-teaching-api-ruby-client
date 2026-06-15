# GetIntoTeachingApiClient::CandidatesApi

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_candidate_access_token**](CandidatesApi.md#create_candidate_access_token) | **POST** /api/candidates/access_tokens | Create an access token for an existing candidate. |


## create_candidate_access_token

> create_candidate_access_token(existing_candidate_request)

Create an access token for an existing candidate.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::CandidatesApi.new
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'johndoe@example.com'}) # ExistingCandidateRequest | Candidate details to create an access token.

begin
  # Create an access token for an existing candidate.
  api_instance.create_candidate_access_token(existing_candidate_request)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling CandidatesApi->create_candidate_access_token: #{e}"
end
```

#### Using the create_candidate_access_token_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_candidate_access_token_with_http_info(existing_candidate_request)

```ruby
begin
  # Create an access token for an existing candidate.
  data, status_code, headers = api_instance.create_candidate_access_token_with_http_info(existing_candidate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling CandidatesApi->create_candidate_access_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate details to create an access token. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

