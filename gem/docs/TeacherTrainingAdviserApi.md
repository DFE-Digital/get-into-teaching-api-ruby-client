# GetIntoTeachingApiClient::TeacherTrainingAdviserApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_existing_teacher_training_adviser_candidate**](TeacherTrainingAdviserApi.md#get_existing_teacher_training_adviser_candidate) | **POST** /api/teacher_training_adviser/candidates/{accessToken} | Retrieves an existing candidate for the Teacher Training Adviser service.
[**upsert_teacher_training_adviser_candidate**](TeacherTrainingAdviserApi.md#upsert_teacher_training_adviser_candidate) | **POST** /api/teacher_training_adviser/candidates | Upserts a candidate for the Teacher Training Adviser service.


# **get_existing_teacher_training_adviser_candidate**
> Candidate get_existing_teacher_training_adviser_candidate(access_token, body)

Retrieves an existing candidate for the Teacher Training Adviser service.

  Retrieves an existing candidate for the Teacher Training Adviser service. The `accessToken` is obtained from a   `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you   exchanged for your token matches the request payload here).

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

api_instance = GetIntoTeachingApiClient::TeacherTrainingAdviserApi.new

access_token = 'access_token_example' # String | Access token (PIN code).

body = GetIntoTeachingApiClient::ExistingCandidateRequest.new # ExistingCandidateRequest | Candidate access token request (must match an existing candidate).


begin
  #Retrieves an existing candidate for the Teacher Training Adviser service.
  result = api_instance.get_existing_teacher_training_adviser_candidate(access_token, body)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeacherTrainingAdviserApi->get_existing_teacher_training_adviser_candidate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| Access token (PIN code). | 
 **body** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md)| Candidate access token request (must match an existing candidate). | 

### Return type

[**Candidate**](Candidate.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **upsert_teacher_training_adviser_candidate**
> upsert_teacher_training_adviser_candidate(body)

Upserts a candidate for the Teacher Training Adviser service.

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

api_instance = GetIntoTeachingApiClient::TeacherTrainingAdviserApi.new

body = GetIntoTeachingApiClient::Candidate.new # Candidate | Candidate to upsert for the Teacher Training Adviser service.


begin
  #Upserts a candidate for the Teacher Training Adviser service.
  api_instance.upsert_teacher_training_adviser_candidate(body)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeacherTrainingAdviserApi->upsert_teacher_training_adviser_candidate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Candidate**](Candidate.md)| Candidate to upsert for the Teacher Training Adviser service. | 

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



