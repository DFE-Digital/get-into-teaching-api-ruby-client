# GetIntoTeachingApiClient::CandidatesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_candidate_access_token**](CandidatesApi.md#create_candidate_access_token) | **POST** /api/candidates/access_tokens | Creates a candidate access token. |
| [**matchback_candidate**](CandidatesApi.md#matchback_candidate) | **POST** /api/candidates/matchback | Perform a matchback operation, returning the match candidate id. |


## create_candidate_access_token

> create_candidate_access_token(existing_candidate_request)

Creates a candidate access token.

                  Finds a candidate matching at least 3 of the provided CandidateAccessTokenRequest attributes (including email).                   If a candidate is found, an access token (PIN code) will be sent to the candidate email address                   that can then be used for verification.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = GetIntoTeachingApiClient::CandidatesApi.new
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'email_example'}) # ExistingCandidateRequest | Candidate access token request (must match an existing candidate).

begin
  # Creates a candidate access token.
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
  # Creates a candidate access token.
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
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate access token request (must match an existing candidate). |  |

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## matchback_candidate

> matchback_candidate(existing_candidate_request)

Perform a matchback operation, returning the match candidate id.

Attempts to matchback against a known candidate and returns the candidate id.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = GetIntoTeachingApiClient::CandidatesApi.new
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'email_example'}) # ExistingCandidateRequest | Candidate details to matchback.

begin
  # Perform a matchback operation, returning the match candidate id.
  api_instance.matchback_candidate(existing_candidate_request)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling CandidatesApi->matchback_candidate: #{e}"
end
```

#### Using the matchback_candidate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> matchback_candidate_with_http_info(existing_candidate_request)

```ruby
begin
  # Perform a matchback operation, returning the match candidate id.
  data, status_code, headers = api_instance.matchback_candidate_with_http_info(existing_candidate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling CandidatesApi->matchback_candidate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate details to matchback. |  |

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

