# GetIntoTeachingApiClient::SchoolsExperienceApi

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_school_experience**](SchoolsExperienceApi.md#add_school_experience) | **POST** /api/schools_experience/candidates/{id}/school_experience | Adds a school experience to a candidate. |
| [**exchange_access_token_for_schools_experience_sign_up**](SchoolsExperienceApi.md#exchange_access_token_for_schools_experience_sign_up) | **POST** /api/schools_experience/candidates/exchange_access_token/{accessToken} | Exchange an access token for a full candidate sign-up. |
| [**get_schools_experience_candidate**](SchoolsExperienceApi.md#get_schools_experience_candidate) | **GET** /api/schools_experience/candidates/{id} | Retrieves a candidate for the Schools Experience service. |
| [**get_schools_experience_sign_ups**](SchoolsExperienceApi.md#get_schools_experience_sign_ups) | **GET** /api/schools_experience/candidates | Retrieves existing SchoolsExperienceSignUps for the candidate ids. |
| [**sign_up_schools_experience_candidate**](SchoolsExperienceApi.md#sign_up_schools_experience_candidate) | **POST** /api/schools_experience/candidates | Creates a new candidate for the Schools Experience service. |


## add_school_experience

> add_school_experience(id, candidate_school_experience)

Adds a school experience to a candidate.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::SchoolsExperienceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the candidate.
candidate_school_experience = GetIntoTeachingApiClient::CandidateSchoolExperience.new({school_urn: '123456'}) # CandidateSchoolExperience | School experience details to add.

begin
  # Adds a school experience to a candidate.
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
  # Adds a school experience to a candidate.
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
| **id** | **String** | The id of the candidate. |  |
| **candidate_school_experience** | [**CandidateSchoolExperience**](CandidateSchoolExperience.md) | School experience details to add. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## exchange_access_token_for_schools_experience_sign_up

> <SchoolsExperienceSignUp> exchange_access_token_for_schools_experience_sign_up(access_token, existing_candidate_request)

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

api_instance = GetIntoTeachingApiClient::SchoolsExperienceApi.new
access_token = 'access_token_example' # String | The access token to exchange.
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'johndoe@example.com'}) # ExistingCandidateRequest | Candidate details to exchange.

begin
  # Exchange an access token for a full candidate sign-up.
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
  # Exchange an access token for a full candidate sign-up.
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
| **access_token** | **String** | The access token to exchange. |  |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate details to exchange. |  |

### Return type

[**SchoolsExperienceSignUp**](SchoolsExperienceSignUp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_schools_experience_candidate

> <SchoolsExperienceSignUp> get_schools_experience_candidate(id)

Retrieves a candidate for the Schools Experience service.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::SchoolsExperienceApi.new
id = 'id_example' # String | The id of the candidate.

begin
  # Retrieves a candidate for the Schools Experience service.
  result = api_instance.get_schools_experience_candidate(id)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling SchoolsExperienceApi->get_schools_experience_candidate: #{e}"
end
```

#### Using the get_schools_experience_candidate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchoolsExperienceSignUp>, Integer, Hash)> get_schools_experience_candidate_with_http_info(id)

```ruby
begin
  # Retrieves a candidate for the Schools Experience service.
  data, status_code, headers = api_instance.get_schools_experience_candidate_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchoolsExperienceSignUp>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling SchoolsExperienceApi->get_schools_experience_candidate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the candidate. |  |

### Return type

[**SchoolsExperienceSignUp**](SchoolsExperienceSignUp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_schools_experience_sign_ups

> <Array<SchoolsExperienceSignUp>> get_schools_experience_sign_ups(ids)

Retrieves existing SchoolsExperienceSignUps for the candidate ids.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::SchoolsExperienceApi.new
ids = ['inner_example'] # Array<String> | A collection of Candidate ids.

begin
  # Retrieves existing SchoolsExperienceSignUps for the candidate ids.
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
  # Retrieves existing SchoolsExperienceSignUps for the candidate ids.
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
| **ids** | [**Array&lt;String&gt;**](String.md) | A collection of Candidate ids. |  |

### Return type

[**Array&lt;SchoolsExperienceSignUp&gt;**](SchoolsExperienceSignUp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## sign_up_schools_experience_candidate

> <SchoolsExperienceSignUp> sign_up_schools_experience_candidate(schools_experience_sign_up)

Creates a new candidate for the Schools Experience service.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::SchoolsExperienceApi.new
schools_experience_sign_up = GetIntoTeachingApiClient::SchoolsExperienceSignUp.new({email: 'johndoe@example.com', first_name: 'John', last_name: 'Doe', preferred_teaching_subject_id: '6b793433-cd1f-e911-a979-000d3a20838a', address_line1: '123 Main St', address_city: 'London', address_state_or_province: 'London', address_postcode: 'SW1A 1AA', telephone: '01234567890', has_dbs_certificate: true, accepted_policy_id: '4872c8ed-0229-f111-8342-7c1e5285e3ab'}) # SchoolsExperienceSignUp | Candidate to create for the Schools Experience service.

begin
  # Creates a new candidate for the Schools Experience service.
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
  # Creates a new candidate for the Schools Experience service.
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
| **schools_experience_sign_up** | [**SchoolsExperienceSignUp**](SchoolsExperienceSignUp.md) | Candidate to create for the Schools Experience service. |  |

### Return type

[**SchoolsExperienceSignUp**](SchoolsExperienceSignUp.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

