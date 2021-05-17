# GetIntoTeachingApiClient::SchoolsExperienceApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_classroom_experience_note**](SchoolsExperienceApi.md#add_classroom_experience_note) | **POST** /api/schools_experience/candidates/{id}/classroom_experience_notes | Add a classroom experience note to the candidate.
[**exchange_access_token_for_schools_experience_sign_up**](SchoolsExperienceApi.md#exchange_access_token_for_schools_experience_sign_up) | **POST** /api/schools_experience/candidates/exchange_access_token/{accessToken} | Retrieves a pre-populated SchoolsExperienceSignUp for the candidate.
[**sign_up_schools_experience_candidate**](SchoolsExperienceApi.md#sign_up_schools_experience_candidate) | **POST** /api/schools_experience/candidates | Sign up a candidate for the Schools Experience service.


# **add_classroom_experience_note**
> add_classroom_experience_note(id, body)

Add a classroom experience note to the candidate.

Adds a new classroom experience note to the candidate record

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

api_instance = GetIntoTeachingApiClient::SchoolsExperienceApi.new

id = 'id_example' # String | The `id` of the `Candidate`.

body = GetIntoTeachingApiClient::ClassroomExperienceNote.new # ClassroomExperienceNote | Classroom experience note.


begin
  #Add a classroom experience note to the candidate.
  api_instance.add_classroom_experience_note(id, body)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling SchoolsExperienceApi->add_classroom_experience_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The &#x60;id&#x60; of the &#x60;Candidate&#x60;. | 
 **body** | [**ClassroomExperienceNote**](ClassroomExperienceNote.md)| Classroom experience note. | 

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **exchange_access_token_for_schools_experience_sign_up**
> SchoolsExperienceSignUp exchange_access_token_for_schools_experience_sign_up(access_token, body)

Retrieves a pre-populated SchoolsExperienceSignUp for the candidate.

                 Retrieves a pre-populated SchoolsExperienceSignUp for the candidate. The `accessToken` is obtained from a                  `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                  exchanged for your token matches the request payload here).

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

api_instance = GetIntoTeachingApiClient::SchoolsExperienceApi.new

access_token = 'access_token_example' # String | Access token (PIN code).

body = GetIntoTeachingApiClient::ExistingCandidateRequest.new # ExistingCandidateRequest | Candidate access token request (must match an existing candidate).


begin
  #Retrieves a pre-populated SchoolsExperienceSignUp for the candidate.
  result = api_instance.exchange_access_token_for_schools_experience_sign_up(access_token, body)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling SchoolsExperienceApi->exchange_access_token_for_schools_experience_sign_up: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| Access token (PIN code). | 
 **body** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md)| Candidate access token request (must match an existing candidate). | 

### Return type

[**SchoolsExperienceSignUp**](SchoolsExperienceSignUp.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **sign_up_schools_experience_candidate**
> sign_up_schools_experience_candidate(body)

Sign up a candidate for the Schools Experience service.

Validation errors may be present on the `SchoolsExperienceSignUp` object as well as the hidden `Candidate` model that is mapped to; property names are consistent, so you should check for inclusion of the field in the key when linking an error message back to a property on the request model. For example, an error on `DegreeSubject` can return under the keys `Candidate.Qualifications[0].DegreeSubject` and `DegreeSubject`.

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

api_instance = GetIntoTeachingApiClient::SchoolsExperienceApi.new

body = GetIntoTeachingApiClient::SchoolsExperienceSignUp.new # SchoolsExperienceSignUp | Candidate to sign up for the Schools Experience service.


begin
  #Sign up a candidate for the Schools Experience service.
  api_instance.sign_up_schools_experience_candidate(body)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling SchoolsExperienceApi->sign_up_schools_experience_candidate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SchoolsExperienceSignUp**](SchoolsExperienceSignUp.md)| Candidate to sign up for the Schools Experience service. | 

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



