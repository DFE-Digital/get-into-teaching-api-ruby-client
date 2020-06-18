# GetIntoTeachingApiClient::TypesApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_candidate_channels**](TypesApi.md#get_candidate_channels) | **GET** /api/types/candidate/channels | Retrieves the list of candidate channels.
[**get_candidate_initial_teacher_training_years**](TypesApi.md#get_candidate_initial_teacher_training_years) | **GET** /api/types/candidate/initial_teacher_training_years | Retrieves the list of candidate initial teacher training years.
[**get_candidate_locations**](TypesApi.md#get_candidate_locations) | **GET** /api/types/candidate/locations | Retrieves the list of candidate locations.
[**get_candidate_preferred_education_phases**](TypesApi.md#get_candidate_preferred_education_phases) | **GET** /api/types/candidate/preferred_education_phases | Retrieves the list of candidate preferred education phases.
[**get_country_types**](TypesApi.md#get_country_types) | **GET** /api/types/countries | Retrieves the list of countries.
[**get_past_teaching_position_education_phases**](TypesApi.md#get_past_teaching_position_education_phases) | **GET** /api/types/past_teaching_position/education_phases | Retrieves the list of past teaching position education phases.
[**get_phone_call_channels**](TypesApi.md#get_phone_call_channels) | **GET** /api/types/phone_call/channels | Retrieves the list of phone call channels.
[**get_qualification_categories**](TypesApi.md#get_qualification_categories) | **GET** /api/types/qualification/categories | Retrieves the list of qualification categories.
[**get_qualification_degree_status**](TypesApi.md#get_qualification_degree_status) | **GET** /api/types/qualification/degree_status | Retrieves the list of qualification degree status.
[**get_qualification_types**](TypesApi.md#get_qualification_types) | **GET** /api/types/qualification/types | Retrieves the list of qualification types.
[**get_teaching_event_types**](TypesApi.md#get_teaching_event_types) | **GET** /api/types/teaching_event/types | Retrieves the list of teaching event types.
[**get_teaching_subjects**](TypesApi.md#get_teaching_subjects) | **GET** /api/types/teaching_subjects | Retrieves the list of teaching subjects.


# **get_candidate_channels**
> Array&lt;TypeEntity&gt; get_candidate_channels

Retrieves the list of candidate channels.

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

api_instance = GetIntoTeachingApiClient::TypesApi.new

begin
  #Retrieves the list of candidate channels.
  result = api_instance.get_candidate_channels
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_candidate_channels: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TypeEntity&gt;**](TypeEntity.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_candidate_initial_teacher_training_years**
> Array&lt;TypeEntity&gt; get_candidate_initial_teacher_training_years

Retrieves the list of candidate initial teacher training years.

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

api_instance = GetIntoTeachingApiClient::TypesApi.new

begin
  #Retrieves the list of candidate initial teacher training years.
  result = api_instance.get_candidate_initial_teacher_training_years
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_candidate_initial_teacher_training_years: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TypeEntity&gt;**](TypeEntity.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_candidate_locations**
> Array&lt;TypeEntity&gt; get_candidate_locations

Retrieves the list of candidate locations.

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

api_instance = GetIntoTeachingApiClient::TypesApi.new

begin
  #Retrieves the list of candidate locations.
  result = api_instance.get_candidate_locations
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_candidate_locations: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TypeEntity&gt;**](TypeEntity.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_candidate_preferred_education_phases**
> Array&lt;TypeEntity&gt; get_candidate_preferred_education_phases

Retrieves the list of candidate preferred education phases.

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

api_instance = GetIntoTeachingApiClient::TypesApi.new

begin
  #Retrieves the list of candidate preferred education phases.
  result = api_instance.get_candidate_preferred_education_phases
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_candidate_preferred_education_phases: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TypeEntity&gt;**](TypeEntity.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_country_types**
> Array&lt;TypeEntity&gt; get_country_types

Retrieves the list of countries.

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

api_instance = GetIntoTeachingApiClient::TypesApi.new

begin
  #Retrieves the list of countries.
  result = api_instance.get_country_types
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_country_types: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TypeEntity&gt;**](TypeEntity.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_past_teaching_position_education_phases**
> Array&lt;TypeEntity&gt; get_past_teaching_position_education_phases

Retrieves the list of past teaching position education phases.

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

api_instance = GetIntoTeachingApiClient::TypesApi.new

begin
  #Retrieves the list of past teaching position education phases.
  result = api_instance.get_past_teaching_position_education_phases
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_past_teaching_position_education_phases: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TypeEntity&gt;**](TypeEntity.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_phone_call_channels**
> Array&lt;TypeEntity&gt; get_phone_call_channels

Retrieves the list of phone call channels.

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

api_instance = GetIntoTeachingApiClient::TypesApi.new

begin
  #Retrieves the list of phone call channels.
  result = api_instance.get_phone_call_channels
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_phone_call_channels: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TypeEntity&gt;**](TypeEntity.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_qualification_categories**
> Array&lt;TypeEntity&gt; get_qualification_categories

Retrieves the list of qualification categories.

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

api_instance = GetIntoTeachingApiClient::TypesApi.new

begin
  #Retrieves the list of qualification categories.
  result = api_instance.get_qualification_categories
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_qualification_categories: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TypeEntity&gt;**](TypeEntity.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_qualification_degree_status**
> Array&lt;TypeEntity&gt; get_qualification_degree_status

Retrieves the list of qualification degree status.

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

api_instance = GetIntoTeachingApiClient::TypesApi.new

begin
  #Retrieves the list of qualification degree status.
  result = api_instance.get_qualification_degree_status
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_qualification_degree_status: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TypeEntity&gt;**](TypeEntity.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_qualification_types**
> Array&lt;TypeEntity&gt; get_qualification_types

Retrieves the list of qualification types.

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

api_instance = GetIntoTeachingApiClient::TypesApi.new

begin
  #Retrieves the list of qualification types.
  result = api_instance.get_qualification_types
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_qualification_types: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TypeEntity&gt;**](TypeEntity.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_teaching_event_types**
> Array&lt;TypeEntity&gt; get_teaching_event_types

Retrieves the list of teaching event types.

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

api_instance = GetIntoTeachingApiClient::TypesApi.new

begin
  #Retrieves the list of teaching event types.
  result = api_instance.get_teaching_event_types
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_teaching_event_types: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TypeEntity&gt;**](TypeEntity.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_teaching_subjects**
> Array&lt;TypeEntity&gt; get_teaching_subjects

Retrieves the list of teaching subjects.

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

api_instance = GetIntoTeachingApiClient::TypesApi.new

begin
  #Retrieves the list of teaching subjects.
  result = api_instance.get_teaching_subjects
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_teaching_subjects: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TypeEntity&gt;**](TypeEntity.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



