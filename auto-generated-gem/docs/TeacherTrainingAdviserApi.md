# GetIntoTeachingApiClient::TeacherTrainingAdviserApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchange_access_token_for_teacher_training_adviser_sign_up**](TeacherTrainingAdviserApi.md#exchange_access_token_for_teacher_training_adviser_sign_up) | **POST** /api/teacher_training_adviser/candidates/exchange_access_token/{accessToken} | Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate.
[**get_pre_filled_teacher_training_adviser_sign_up**](TeacherTrainingAdviserApi.md#get_pre_filled_teacher_training_adviser_sign_up) | **POST** /api/teacher_training_adviser/candidates/{accessToken} | Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate.
[**sign_up_teacher_training_adviser_candidate**](TeacherTrainingAdviserApi.md#sign_up_teacher_training_adviser_candidate) | **POST** /api/teacher_training_adviser/candidates | Sign up a candidate for the Teacher Training Adviser service.


# **exchange_access_token_for_teacher_training_adviser_sign_up**
> TeacherTrainingAdviserSignUp exchange_access_token_for_teacher_training_adviser_sign_up(access_token, body)

Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate.

                  Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate. The `accessToken` is obtained from a                   `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                   exchanged for your token matches the request payload here).

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
  #Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate.
  result = api_instance.exchange_access_token_for_teacher_training_adviser_sign_up(access_token, body)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeacherTrainingAdviserApi->exchange_access_token_for_teacher_training_adviser_sign_up: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| Access token (PIN code). | 
 **body** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md)| Candidate access token request (must match an existing candidate). | 

### Return type

[**TeacherTrainingAdviserSignUp**](TeacherTrainingAdviserSignUp.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **get_pre_filled_teacher_training_adviser_sign_up**
> TeacherTrainingAdviserSignUp get_pre_filled_teacher_training_adviser_sign_up(access_token, body)

Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate.

  Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate. The `accessToken` is obtained from a   `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you   exchanged for your token matches the request payload here).

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
  #Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate.
  result = api_instance.get_pre_filled_teacher_training_adviser_sign_up(access_token, body)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeacherTrainingAdviserApi->get_pre_filled_teacher_training_adviser_sign_up: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| Access token (PIN code). | 
 **body** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md)| Candidate access token request (must match an existing candidate). | 

### Return type

[**TeacherTrainingAdviserSignUp**](TeacherTrainingAdviserSignUp.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **sign_up_teacher_training_adviser_candidate**
> sign_up_teacher_training_adviser_candidate(body)

Sign up a candidate for the Teacher Training Adviser service.

Validation errors may be present on the `TeacherTrainingAdviserSignUp` object as well as the hidden `Candidate` model that is mapped to; property names are consistent, so you should check for inclusion of the field in the key when linking an error message back to a property on the request model. For example, an error on `DegreeSubject` can return under the keys `Candidate.Qualifications[0].DegreeSubject` and `DegreeSubject`.

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

body = GetIntoTeachingApiClient::TeacherTrainingAdviserSignUp.new # TeacherTrainingAdviserSignUp | Candidate to sign up for the Teacher Training Adviser service.


begin
  #Sign up a candidate for the Teacher Training Adviser service.
  api_instance.sign_up_teacher_training_adviser_candidate(body)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeacherTrainingAdviserApi->sign_up_teacher_training_adviser_candidate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TeacherTrainingAdviserSignUp**](TeacherTrainingAdviserSignUp.md)| Candidate to sign up for the Teacher Training Adviser service. | 

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



