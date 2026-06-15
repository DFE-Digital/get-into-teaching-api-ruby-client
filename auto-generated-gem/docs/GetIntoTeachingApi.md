# GetIntoTeachingApiClient::GetIntoTeachingApi

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**book_get_into_teaching_callback**](GetIntoTeachingApi.md#book_get_into_teaching_callback) | **POST** /api/get_into_teaching/callbacks | Schedule a callback for a candidate. |
| [**exchange_access_token_for_get_into_teaching_callback**](GetIntoTeachingApi.md#exchange_access_token_for_get_into_teaching_callback) | **POST** /api/get_into_teaching/candidates/exchange_access_token/{accessToken} | Exchange an access token for a full candidate sign-up. |
| [**matchback_get_into_teaching_callback**](GetIntoTeachingApi.md#matchback_get_into_teaching_callback) | **POST** /api/get_into_teaching/matchbacks | Perform a matchback operation to retrieve a pre-populated sign up for the candidate. |


## book_get_into_teaching_callback

> book_get_into_teaching_callback(get_into_teaching_callback)

Schedule a callback for a candidate.

Queues a candidate upsert job.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::GetIntoTeachingApi.new
get_into_teaching_callback = GetIntoTeachingApiClient::GetIntoTeachingCallback.new({accepted_policy_id: '4872c8ed-0229-f111-8342-7c1e5285e3ab', email: 'johndoe@example.com', first_name: 'John', last_name: 'Doe', address_telephone: '07735 111111', phone_call_scheduled_at: Time.parse('2026-06-16T14:00Z'), talking_points: 'I would like to discuss teaching as a career.'}) # GetIntoTeachingCallback | Candidate callback details.

begin
  # Schedule a callback for a candidate.
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
  # Schedule a callback for a candidate.
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
| **get_into_teaching_callback** | [**GetIntoTeachingCallback**](GetIntoTeachingCallback.md) | Candidate callback details. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## exchange_access_token_for_get_into_teaching_callback

> <GetIntoTeachingCallback> exchange_access_token_for_get_into_teaching_callback(access_token, existing_candidate_request)

Exchange an access token for a full candidate sign-up.

Exchanges an access token for a candidate's details to pre-populate a sign-up form.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::GetIntoTeachingApi.new
access_token = 'access_token_example' # String | The access token to exchange.
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'johndoe@example.com'}) # ExistingCandidateRequest | Candidate details to exchange.

begin
  # Exchange an access token for a full candidate sign-up.
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
  # Exchange an access token for a full candidate sign-up.
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
| **access_token** | **String** | The access token to exchange. |  |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate details to exchange. |  |

### Return type

[**GetIntoTeachingCallback**](GetIntoTeachingCallback.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## matchback_get_into_teaching_callback

> <GetIntoTeachingCallback> matchback_get_into_teaching_callback(existing_candidate_request)

Perform a matchback operation to retrieve a pre-populated sign up for the candidate.

Retrieves an existing candidate record based on the provided details.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::GetIntoTeachingApi.new
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'johndoe@example.com'}) # ExistingCandidateRequest | Candidate details to matchback.

begin
  # Perform a matchback operation to retrieve a pre-populated sign up for the candidate.
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
  # Perform a matchback operation to retrieve a pre-populated sign up for the candidate.
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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

