# GetIntoTeachingApiClient::CandidatesApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_candidate_access_token**](CandidatesApi.md#create_candidate_access_token) | **POST** /api/candidates/access_tokens | Creates a candidate access token.


# **create_candidate_access_token**
> create_candidate_access_token(body, opts)

Creates a candidate access token.

  Finds a candidate matching at least 3 of the provided CandidateAccessTokenRequest attributes (including email).   If a candidate is found, an access token (PIN code) will be sent to the candidate email address   that can then be used for verification.

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

api_instance = GetIntoTeachingApiClient::CandidatesApi.new

body = GetIntoTeachingApiClient::ExistingCandidateRequest.new # ExistingCandidateRequest | Candidate access token request (must match an existing candidate).

opts = { 
  x_client_ip: nil # Object | IP address of the end user or client application used for rate limiting. Will fall into a globally rate limited bucket if not specified.
}

begin
  #Creates a candidate access token.
  api_instance.create_candidate_access_token(body, opts)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling CandidatesApi->create_candidate_access_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md)| Candidate access token request (must match an existing candidate). | 
 **x_client_ip** | [**Object**](.md)| IP address of the end user or client application used for rate limiting. Will fall into a globally rate limited bucket if not specified. | [optional] 

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



