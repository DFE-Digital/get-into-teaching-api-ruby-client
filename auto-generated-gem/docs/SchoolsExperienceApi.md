# GetIntoTeachingApiClient::SchoolsExperienceApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_classroom_experience_note**](SchoolsExperienceApi.md#add_classroom_experience_note) | **POST** /api/schools_experience/candidates/{id}/classroom_experience_notes | Add a classroom experience note to the candidate.
[**exchange_access_token_for_schools_experience_sign_up**](SchoolsExperienceApi.md#exchange_access_token_for_schools_experience_sign_up) | **POST** /api/schools_experience/candidates/exchange_access_token/{accessToken} | Retrieves a pre-populated SchoolsExperienceSignUp for the candidate.
[**get_schools_experience_sign_up**](SchoolsExperienceApi.md#get_schools_experience_sign_up) | **GET** /api/schools_experience/candidates/{id} | Retrieves an existing SchoolsExperienceSignUp for the candidate.
[**get_schools_experience_sign_ups**](SchoolsExperienceApi.md#get_schools_experience_sign_ups) | **GET** /api/schools_experience/candidates | Retrieves existing SchoolsExperienceSignUps for the candidate &#x60;ids&#x60;.
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



# **get_schools_experience_sign_up**
> SchoolsExperienceSignUp get_schools_experience_sign_up(id)

Retrieves an existing SchoolsExperienceSignUp for the candidate.

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


begin
  #Retrieves an existing SchoolsExperienceSignUp for the candidate.
  result = api_instance.get_schools_experience_sign_up(id)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling SchoolsExperienceApi->get_schools_experience_sign_up: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The &#x60;id&#x60; of the &#x60;Candidate&#x60;. | 

### Return type

[**SchoolsExperienceSignUp**](SchoolsExperienceSignUp.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_schools_experience_sign_ups**
> Array&lt;SchoolsExperienceSignUp&gt; get_schools_experience_sign_ups(ids)

Retrieves existing SchoolsExperienceSignUps for the candidate `ids`.

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

ids = ['ids_example'] # Array<String> | A collection of `Candidate` `id`s.


begin
  #Retrieves existing SchoolsExperienceSignUps for the candidate `ids`.
  result = api_instance.get_schools_experience_sign_ups(ids)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling SchoolsExperienceApi->get_schools_experience_sign_ups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**Array&lt;String&gt;**](String.md)| A collection of &#x60;Candidate&#x60; &#x60;id&#x60;s. | 

### Return type

[**Array&lt;SchoolsExperienceSignUp&gt;**](SchoolsExperienceSignUp.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **sign_up_schools_experience_candidate**
> SchoolsExperienceSignUp sign_up_schools_experience_candidate(body)

Sign up a candidate for the Schools Experience service.

                 Upsert a candidate. Returns the updated candidate information in the body of the response along                  with a Location header which specifies the location of the candidate

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
  result = api_instance.sign_up_schools_experience_candidate(body)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling SchoolsExperienceApi->sign_up_schools_experience_candidate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SchoolsExperienceSignUp**](SchoolsExperienceSignUp.md)| Candidate to sign up for the Schools Experience service. | 

### Return type

[**SchoolsExperienceSignUp**](SchoolsExperienceSignUp.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



