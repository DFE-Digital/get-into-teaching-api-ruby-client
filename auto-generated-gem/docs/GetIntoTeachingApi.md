# GetIntoTeachingApiClient::GetIntoTeachingApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**book_get_into_teaching_callback**](GetIntoTeachingApi.md#book_get_into_teaching_callback) | **POST** /api/get_into_teaching/callbacks | Schedule a callback for the candidate. |
| [**exchange_access_token_for_get_into_teaching_callback**](GetIntoTeachingApi.md#exchange_access_token_for_get_into_teaching_callback) | **POST** /api/get_into_teaching/callbacks/exchange_access_token/{accessToken} | Retrieves a pre-populated GetIntoTeachingCallback for the candidate. |
| [**matchback_get_into_teaching_callback**](GetIntoTeachingApi.md#matchback_get_into_teaching_callback) | **POST** /api/get_into_teaching/callbacks/matchback | Perform a matchback operation to retrieve a pre-populated GetIntoTeachingCallback for the candidate. |


## book_get_into_teaching_callback

> book_get_into_teaching_callback(get_into_teaching_callback)

Schedule a callback for the candidate.

Queues a candidate upsert job.

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

api_instance = GetIntoTeachingApiClient::GetIntoTeachingApi.new
get_into_teaching_callback = GetIntoTeachingApiClient::GetIntoTeachingCallback.new({accepted_policy_id: 'accepted_policy_id_example', email: 'email_example', first_name: 'first_name_example', last_name: 'last_name_example', address_telephone: 'address_telephone_example', phone_call_scheduled_at: Time.now, talking_points: 'talking_points_example'}) # GetIntoTeachingCallback | Candidate to book a callback for.

begin
  # Schedule a callback for the candidate.
  api_instance.book_get_into_teaching_callback(get_into_teaching_callback)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling GetIntoTeachingApi->book_get_into_teaching_callback: #{e}"
end
```

#### Using the book_get_into_teaching_callback_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> book_get_into_teaching_callback_with_http_info(get_into_teaching_callback)

```ruby
begin
  # Schedule a callback for the candidate.
  data, status_code, headers = api_instance.book_get_into_teaching_callback_with_http_info(get_into_teaching_callback)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling GetIntoTeachingApi->book_get_into_teaching_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_into_teaching_callback** | [**GetIntoTeachingCallback**](GetIntoTeachingCallback.md) | Candidate to book a callback for. |  |

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## exchange_access_token_for_get_into_teaching_callback

> <GetIntoTeachingCallback> exchange_access_token_for_get_into_teaching_callback(access_token, existing_candidate_request)

Retrieves a pre-populated GetIntoTeachingCallback for the candidate.

                         Retrieves a pre-populated GetIntoTeachingCallback for the candidate. The `accessToken` is obtained from a                          `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                          exchanged for your token matches the request payload here).

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

api_instance = GetIntoTeachingApiClient::GetIntoTeachingApi.new
access_token = 'access_token_example' # String | Access token (PIN code).
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'email_example'}) # ExistingCandidateRequest | Candidate access token request (must match an existing candidate).

begin
  # Retrieves a pre-populated GetIntoTeachingCallback for the candidate.
  result = api_instance.exchange_access_token_for_get_into_teaching_callback(access_token, existing_candidate_request)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling GetIntoTeachingApi->exchange_access_token_for_get_into_teaching_callback: #{e}"
end
```

#### Using the exchange_access_token_for_get_into_teaching_callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIntoTeachingCallback>, Integer, Hash)> exchange_access_token_for_get_into_teaching_callback_with_http_info(access_token, existing_candidate_request)

```ruby
begin
  # Retrieves a pre-populated GetIntoTeachingCallback for the candidate.
  data, status_code, headers = api_instance.exchange_access_token_for_get_into_teaching_callback_with_http_info(access_token, existing_candidate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIntoTeachingCallback>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling GetIntoTeachingApi->exchange_access_token_for_get_into_teaching_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | Access token (PIN code). |  |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate access token request (must match an existing candidate). |  |

### Return type

[**GetIntoTeachingCallback**](GetIntoTeachingCallback.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## matchback_get_into_teaching_callback

> <GetIntoTeachingCallback> matchback_get_into_teaching_callback(existing_candidate_request)

Perform a matchback operation to retrieve a pre-populated GetIntoTeachingCallback for the candidate.

Attempts to matchback against a known candidate and returns a pre-populated GetIntoTeachingCallback if a match is found.

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

api_instance = GetIntoTeachingApiClient::GetIntoTeachingApi.new
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'email_example'}) # ExistingCandidateRequest | Candidate details to matchback.

begin
  # Perform a matchback operation to retrieve a pre-populated GetIntoTeachingCallback for the candidate.
  result = api_instance.matchback_get_into_teaching_callback(existing_candidate_request)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling GetIntoTeachingApi->matchback_get_into_teaching_callback: #{e}"
end
```

#### Using the matchback_get_into_teaching_callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIntoTeachingCallback>, Integer, Hash)> matchback_get_into_teaching_callback_with_http_info(existing_candidate_request)

```ruby
begin
  # Perform a matchback operation to retrieve a pre-populated GetIntoTeachingCallback for the candidate.
  data, status_code, headers = api_instance.matchback_get_into_teaching_callback_with_http_info(existing_candidate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIntoTeachingCallback>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling GetIntoTeachingApi->matchback_get_into_teaching_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate details to matchback. |  |

### Return type

[**GetIntoTeachingCallback**](GetIntoTeachingCallback.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

