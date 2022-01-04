# GetIntoTeachingApiClient::TeacherTrainingAdviserApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_access_token_for_teacher_training_adviser_sign_up**](TeacherTrainingAdviserApi.md#exchange_access_token_for_teacher_training_adviser_sign_up) | **POST** /api/teacher_training_adviser/candidates/exchange_access_token/{accessToken} | Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate. |
| [**sign_up_teacher_training_adviser_candidate**](TeacherTrainingAdviserApi.md#sign_up_teacher_training_adviser_candidate) | **POST** /api/teacher_training_adviser/candidates | Sign up a candidate for the Teacher Training Adviser service. |


## exchange_access_token_for_teacher_training_adviser_sign_up

> <TeacherTrainingAdviserSignUp> exchange_access_token_for_teacher_training_adviser_sign_up(access_token, existing_candidate_request)

Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate.

                  Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate. The `accessToken` is obtained from a                   `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                   exchanged for your token matches the request payload here).

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

api_instance = GetIntoTeachingApiClient::TeacherTrainingAdviserApi.new
access_token = 'access_token_example' # String | Access token (PIN code).
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'email_example'}) # ExistingCandidateRequest | Candidate access token request (must match an existing candidate).

begin
  # Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate.
  result = api_instance.exchange_access_token_for_teacher_training_adviser_sign_up(access_token, existing_candidate_request)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeacherTrainingAdviserApi->exchange_access_token_for_teacher_training_adviser_sign_up: #{e}"
end
```

#### Using the exchange_access_token_for_teacher_training_adviser_sign_up_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeacherTrainingAdviserSignUp>, Integer, Hash)> exchange_access_token_for_teacher_training_adviser_sign_up_with_http_info(access_token, existing_candidate_request)

```ruby
begin
  # Retrieves a pre-populated TeacherTrainingAdviserSignUp for the candidate.
  data, status_code, headers = api_instance.exchange_access_token_for_teacher_training_adviser_sign_up_with_http_info(access_token, existing_candidate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeacherTrainingAdviserSignUp>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeacherTrainingAdviserApi->exchange_access_token_for_teacher_training_adviser_sign_up_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | Access token (PIN code). |  |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate access token request (must match an existing candidate). |  |

### Return type

[**TeacherTrainingAdviserSignUp**](TeacherTrainingAdviserSignUp.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## sign_up_teacher_training_adviser_candidate

> sign_up_teacher_training_adviser_candidate(teacher_training_adviser_sign_up)

Sign up a candidate for the Teacher Training Adviser service.

Queue a candidate upsert job.

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

api_instance = GetIntoTeachingApiClient::TeacherTrainingAdviserApi.new
teacher_training_adviser_sign_up = GetIntoTeachingApiClient::TeacherTrainingAdviserSignUp.new({country_id: 'country_id_example', accepted_policy_id: 'accepted_policy_id_example', type_id: 37, email: 'email_example', first_name: 'first_name_example', last_name: 'last_name_example', date_of_birth: Date.today}) # TeacherTrainingAdviserSignUp | Candidate to sign up for the Teacher Training Adviser service.

begin
  # Sign up a candidate for the Teacher Training Adviser service.
  api_instance.sign_up_teacher_training_adviser_candidate(teacher_training_adviser_sign_up)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeacherTrainingAdviserApi->sign_up_teacher_training_adviser_candidate: #{e}"
end
```

#### Using the sign_up_teacher_training_adviser_candidate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> sign_up_teacher_training_adviser_candidate_with_http_info(teacher_training_adviser_sign_up)

```ruby
begin
  # Sign up a candidate for the Teacher Training Adviser service.
  data, status_code, headers = api_instance.sign_up_teacher_training_adviser_candidate_with_http_info(teacher_training_adviser_sign_up)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeacherTrainingAdviserApi->sign_up_teacher_training_adviser_candidate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teacher_training_adviser_sign_up** | [**TeacherTrainingAdviserSignUp**](TeacherTrainingAdviserSignUp.md) | Candidate to sign up for the Teacher Training Adviser service. |  |

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

