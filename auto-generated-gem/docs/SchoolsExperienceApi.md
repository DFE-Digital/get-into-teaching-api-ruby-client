# GetIntoTeachingApiClient::SchoolsExperienceApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_school_experience**](SchoolsExperienceApi.md#add_school_experience) | **POST** /api/schools_experience/candidates/{id}/school_experience | Add a school experience to the candidate. |
| [**exchange_access_token_for_schools_experience_sign_up**](SchoolsExperienceApi.md#exchange_access_token_for_schools_experience_sign_up) | **POST** /api/schools_experience/candidates/exchange_access_token/{accessToken} | Retrieves a pre-populated SchoolsExperienceSignUp for the candidate. |
| [**get_schools_experience_sign_up**](SchoolsExperienceApi.md#get_schools_experience_sign_up) | **GET** /api/schools_experience/candidates/{id} | Retrieves an existing SchoolsExperienceSignUp for the candidate. |
| [**get_schools_experience_sign_ups**](SchoolsExperienceApi.md#get_schools_experience_sign_ups) | **GET** /api/schools_experience/candidates | Retrieves existing SchoolsExperienceSignUps for the candidate &#x60;ids&#x60;. |
| [**sign_up_schools_experience_candidate**](SchoolsExperienceApi.md#sign_up_schools_experience_candidate) | **POST** /api/schools_experience/candidates | Sign up a candidate for the Schools Experience service. |


## add_school_experience

> add_school_experience(id, candidate_school_experience)

Add a school experience to the candidate.

Adds a new school experience to the candidate record

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

api_instance = GetIntoTeachingApiClient::SchoolsExperienceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The `id` of the `Candidate`.
candidate_school_experience = GetIntoTeachingApiClient::CandidateSchoolExperience.new # CandidateSchoolExperience | School experience.

begin
  # Add a school experience to the candidate.
  api_instance.add_school_experience(id, candidate_school_experience)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling SchoolsExperienceApi->add_school_experience: #{e}"
end
```

#### Using the add_school_experience_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_school_experience_with_http_info(id, candidate_school_experience)

```ruby
begin
  # Add a school experience to the candidate.
  data, status_code, headers = api_instance.add_school_experience_with_http_info(id, candidate_school_experience)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling SchoolsExperienceApi->add_school_experience_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The &#x60;id&#x60; of the &#x60;Candidate&#x60;. |  |
| **candidate_school_experience** | [**CandidateSchoolExperience**](CandidateSchoolExperience.md) | School experience. |  |

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## exchange_access_token_for_schools_experience_sign_up

> <SchoolsExperienceSignUp> exchange_access_token_for_schools_experience_sign_up(access_token, existing_candidate_request)

Retrieves a pre-populated SchoolsExperienceSignUp for the candidate.

                 Retrieves a pre-populated SchoolsExperienceSignUp for the candidate. The `accessToken` is obtained from a                  `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                  exchanged for your token matches the request payload here).

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

api_instance = GetIntoTeachingApiClient::SchoolsExperienceApi.new
access_token = 'access_token_example' # String | Access token (PIN code).
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'email_example'}) # ExistingCandidateRequest | Candidate access token request (must match an existing candidate).

begin
  # Retrieves a pre-populated SchoolsExperienceSignUp for the candidate.
  result = api_instance.exchange_access_token_for_schools_experience_sign_up(access_token, existing_candidate_request)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling SchoolsExperienceApi->exchange_access_token_for_schools_experience_sign_up: #{e}"
end
```

#### Using the exchange_access_token_for_schools_experience_sign_up_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchoolsExperienceSignUp>, Integer, Hash)> exchange_access_token_for_schools_experience_sign_up_with_http_info(access_token, existing_candidate_request)

```ruby
begin
  # Retrieves a pre-populated SchoolsExperienceSignUp for the candidate.
  data, status_code, headers = api_instance.exchange_access_token_for_schools_experience_sign_up_with_http_info(access_token, existing_candidate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchoolsExperienceSignUp>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling SchoolsExperienceApi->exchange_access_token_for_schools_experience_sign_up_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | Access token (PIN code). |  |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate access token request (must match an existing candidate). |  |

### Return type

[**SchoolsExperienceSignUp**](SchoolsExperienceSignUp.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## get_schools_experience_sign_up

> <SchoolsExperienceSignUp> get_schools_experience_sign_up(id)

Retrieves an existing SchoolsExperienceSignUp for the candidate.

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

api_instance = GetIntoTeachingApiClient::SchoolsExperienceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The `id` of the `Candidate`.

begin
  # Retrieves an existing SchoolsExperienceSignUp for the candidate.
  result = api_instance.get_schools_experience_sign_up(id)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling SchoolsExperienceApi->get_schools_experience_sign_up: #{e}"
end
```

#### Using the get_schools_experience_sign_up_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchoolsExperienceSignUp>, Integer, Hash)> get_schools_experience_sign_up_with_http_info(id)

```ruby
begin
  # Retrieves an existing SchoolsExperienceSignUp for the candidate.
  data, status_code, headers = api_instance.get_schools_experience_sign_up_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchoolsExperienceSignUp>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling SchoolsExperienceApi->get_schools_experience_sign_up_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The &#x60;id&#x60; of the &#x60;Candidate&#x60;. |  |

### Return type

[**SchoolsExperienceSignUp**](SchoolsExperienceSignUp.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_schools_experience_sign_ups

> <Array<SchoolsExperienceSignUp>> get_schools_experience_sign_ups(ids)

Retrieves existing SchoolsExperienceSignUps for the candidate `ids`.

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

api_instance = GetIntoTeachingApiClient::SchoolsExperienceApi.new
ids = ['inner_example'] # Array<String> | A collection of `Candidate` `id`s.

begin
  # Retrieves existing SchoolsExperienceSignUps for the candidate `ids`.
  result = api_instance.get_schools_experience_sign_ups(ids)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling SchoolsExperienceApi->get_schools_experience_sign_ups: #{e}"
end
```

#### Using the get_schools_experience_sign_ups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SchoolsExperienceSignUp>>, Integer, Hash)> get_schools_experience_sign_ups_with_http_info(ids)

```ruby
begin
  # Retrieves existing SchoolsExperienceSignUps for the candidate `ids`.
  data, status_code, headers = api_instance.get_schools_experience_sign_ups_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SchoolsExperienceSignUp>>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling SchoolsExperienceApi->get_schools_experience_sign_ups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | A collection of &#x60;Candidate&#x60; &#x60;id&#x60;s. |  |

### Return type

[**Array&lt;SchoolsExperienceSignUp&gt;**](SchoolsExperienceSignUp.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sign_up_schools_experience_candidate

> <SchoolsExperienceSignUp> sign_up_schools_experience_candidate(schools_experience_sign_up)

Sign up a candidate for the Schools Experience service.

                 Upsert a candidate. Returns the updated candidate information in the body of the response along                  with a Location header which specifies the location of the candidate

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

api_instance = GetIntoTeachingApiClient::SchoolsExperienceApi.new
schools_experience_sign_up = GetIntoTeachingApiClient::SchoolsExperienceSignUp.new({preferred_teaching_subject_id: 'preferred_teaching_subject_id_example', accepted_policy_id: 'accepted_policy_id_example', email: 'email_example', first_name: 'first_name_example', last_name: 'last_name_example', address_line1: 'address_line1_example', address_city: 'address_city_example', address_state_or_province: 'address_state_or_province_example', address_postcode: 'address_postcode_example', telephone: 'telephone_example', has_dbs_certificate: false}) # SchoolsExperienceSignUp | Candidate to sign up for the Schools Experience service.

begin
  # Sign up a candidate for the Schools Experience service.
  result = api_instance.sign_up_schools_experience_candidate(schools_experience_sign_up)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling SchoolsExperienceApi->sign_up_schools_experience_candidate: #{e}"
end
```

#### Using the sign_up_schools_experience_candidate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchoolsExperienceSignUp>, Integer, Hash)> sign_up_schools_experience_candidate_with_http_info(schools_experience_sign_up)

```ruby
begin
  # Sign up a candidate for the Schools Experience service.
  data, status_code, headers = api_instance.sign_up_schools_experience_candidate_with_http_info(schools_experience_sign_up)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchoolsExperienceSignUp>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling SchoolsExperienceApi->sign_up_schools_experience_candidate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schools_experience_sign_up** | [**SchoolsExperienceSignUp**](SchoolsExperienceSignUp.md) | Candidate to sign up for the Schools Experience service. |  |

### Return type

[**SchoolsExperienceSignUp**](SchoolsExperienceSignUp.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

