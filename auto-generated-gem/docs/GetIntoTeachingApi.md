# GetIntoTeachingApiClient::GetIntoTeachingApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**book_get_into_teaching_callback**](GetIntoTeachingApi.md#book_get_into_teaching_callback) | **POST** /api/get_into_teaching/callbacks | Schedule a callback for the candidate.
[**exchange_access_token_for_get_into_teaching_callback**](GetIntoTeachingApi.md#exchange_access_token_for_get_into_teaching_callback) | **POST** /api/get_into_teaching/callbacks/exchange_access_token/{accessToken} | Retrieves a pre-populated GetIntoTeachingCallback for the candidate.

# **book_get_into_teaching_callback**
> book_get_into_teaching_callback(body)

Schedule a callback for the candidate.

Queues a candidate upsert job.

### Example
```ruby
# load the gem
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = GetIntoTeachingApiClient::GetIntoTeachingApi.new
body = GetIntoTeachingApiClient::GetIntoTeachingCallback.new # GetIntoTeachingCallback | Candidate to book a callback for.


begin
  #Schedule a callback for the candidate.
  api_instance.book_get_into_teaching_callback(body)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling GetIntoTeachingApi->book_get_into_teaching_callback: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetIntoTeachingCallback**](GetIntoTeachingCallback.md)| Candidate to book a callback for. | 

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **exchange_access_token_for_get_into_teaching_callback**
> GetIntoTeachingCallback exchange_access_token_for_get_into_teaching_callback(bodyaccess_token)

Retrieves a pre-populated GetIntoTeachingCallback for the candidate.

                         Retrieves a pre-populated GetIntoTeachingCallback for the candidate. The `accessToken` is obtained from a                          `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                          exchanged for your token matches the request payload here).

### Example
```ruby
# load the gem
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = GetIntoTeachingApiClient::GetIntoTeachingApi.new
body = GetIntoTeachingApiClient::ExistingCandidateRequest.new # ExistingCandidateRequest | Candidate access token request (must match an existing candidate).
access_token = 'access_token_example' # String | Access token (PIN code).


begin
  #Retrieves a pre-populated GetIntoTeachingCallback for the candidate.
  result = api_instance.exchange_access_token_for_get_into_teaching_callback(bodyaccess_token)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling GetIntoTeachingApi->exchange_access_token_for_get_into_teaching_callback: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md)| Candidate access token request (must match an existing candidate). | 
 **access_token** | **String**| Access token (PIN code). | 

### Return type

[**GetIntoTeachingCallback**](GetIntoTeachingCallback.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



