# GetIntoTeachingApiClient::TeacherTrainingAdviserApi

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_access_token_for_teacher_training_adviser_sign_up**](TeacherTrainingAdviserApi.md#exchange_access_token_for_teacher_training_adviser_sign_up) | **POST** /api/teacher_training_adviser/candidates/exchange_access_token/{accessToken} | Exchange an access token for a full candidate sign-up. |
| [**matchback_candidate**](TeacherTrainingAdviserApi.md#matchback_candidate) | **POST** /api/teacher_training_adviser/matchbacks | Perform a matchback operation to retrieve a pre-populated sign up for the candidate. |
| [**sign_up_teacher_training_adviser_candidate**](TeacherTrainingAdviserApi.md#sign_up_teacher_training_adviser_candidate) | **POST** /api/teacher_training_adviser/candidates | Sign up a candidate for the Teacher Training Adviser service. |


## exchange_access_token_for_teacher_training_adviser_sign_up

> <TeacherTrainingAdviserSignUp> exchange_access_token_for_teacher_training_adviser_sign_up(access_token, existing_candidate_request)

Exchange an access token for a full candidate sign-up.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::TeacherTrainingAdviserApi.new
access_token = 'access_token_example' # String | The access token to exchange.
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'johndoe@example.com'}) # ExistingCandidateRequest | Candidate details to exchange.

begin
  # Exchange an access token for a full candidate sign-up.
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
  # Exchange an access token for a full candidate sign-up.
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
| **access_token** | **String** | The access token to exchange. |  |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate details to exchange. |  |

### Return type

[**TeacherTrainingAdviserSignUp**](TeacherTrainingAdviserSignUp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## matchback_candidate

> <TeacherTrainingAdviserSignUp> matchback_candidate(existing_candidate_request)

Perform a matchback operation to retrieve a pre-populated sign up for the candidate.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::TeacherTrainingAdviserApi.new
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'johndoe@example.com'}) # ExistingCandidateRequest | Candidate details to matchback.

begin
  # Perform a matchback operation to retrieve a pre-populated sign up for the candidate.
  result = api_instance.matchback_candidate(existing_candidate_request)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeacherTrainingAdviserApi->matchback_candidate: #{e}"
end
```

#### Using the matchback_candidate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeacherTrainingAdviserSignUp>, Integer, Hash)> matchback_candidate_with_http_info(existing_candidate_request)

```ruby
begin
  # Perform a matchback operation to retrieve a pre-populated sign up for the candidate.
  data, status_code, headers = api_instance.matchback_candidate_with_http_info(existing_candidate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeacherTrainingAdviserSignUp>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeacherTrainingAdviserApi->matchback_candidate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate details to matchback. |  |

### Return type

[**TeacherTrainingAdviserSignUp**](TeacherTrainingAdviserSignUp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## sign_up_teacher_training_adviser_candidate

> <DegreeStatusResponse> sign_up_teacher_training_adviser_candidate(teacher_training_adviser_sign_up)

Sign up a candidate for the Teacher Training Adviser service.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::TeacherTrainingAdviserApi.new
teacher_training_adviser_sign_up = GetIntoTeachingApiClient::TeacherTrainingAdviserSignUp.new({email: 'johndoe@example.com', first_name: 'John', last_name: 'Doe', date_of_birth: Date.parse('Sat Jan 01 00:00:00 GMT 2000'), country_id: '38ce2d0f-0b1f-ee11-9967-6045bd8c5762', accepted_policy_id: '4872c8ed-0229-f111-8342-7c1e5285e3ab', type_id: 222750000}) # TeacherTrainingAdviserSignUp | Candidate to sign up for the Teacher Training Adviser service.

begin
  # Sign up a candidate for the Teacher Training Adviser service.
  result = api_instance.sign_up_teacher_training_adviser_candidate(teacher_training_adviser_sign_up)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeacherTrainingAdviserApi->sign_up_teacher_training_adviser_candidate: #{e}"
end
```

#### Using the sign_up_teacher_training_adviser_candidate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DegreeStatusResponse>, Integer, Hash)> sign_up_teacher_training_adviser_candidate_with_http_info(teacher_training_adviser_sign_up)

```ruby
begin
  # Sign up a candidate for the Teacher Training Adviser service.
  data, status_code, headers = api_instance.sign_up_teacher_training_adviser_candidate_with_http_info(teacher_training_adviser_sign_up)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DegreeStatusResponse>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeacherTrainingAdviserApi->sign_up_teacher_training_adviser_candidate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teacher_training_adviser_sign_up** | [**TeacherTrainingAdviserSignUp**](TeacherTrainingAdviserSignUp.md) | Candidate to sign up for the Teacher Training Adviser service. |  |

### Return type

[**DegreeStatusResponse**](DegreeStatusResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

