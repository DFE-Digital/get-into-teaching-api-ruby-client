# GetIntoTeachingApiClient::TypesApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_candidate_adviser_eligibilities**](TypesApi.md#get_candidate_adviser_eligibilities) | **GET** /api/types/candidate/adviser_eligibilities | Retrieves the list of candidate adviser eligibilities.
[**get_candidate_adviser_requirements**](TypesApi.md#get_candidate_adviser_requirements) | **GET** /api/types/candidate/adviser_requirements | Retrieves the list of candidate adviser requirements.
[**get_candidate_assignment_status**](TypesApi.md#get_candidate_assignment_status) | **GET** /api/types/candidate/assignment_status | Retrieves the list of candidate assignment status.
[**get_candidate_channels**](TypesApi.md#get_candidate_channels) | **GET** /api/types/candidate/channels | Retrieves the list of candidate channels.
[**get_candidate_describe_yourself_options**](TypesApi.md#get_candidate_describe_yourself_options) | **GET** /api/types/candidate/describe_yourself | Retrieves the list of candidate describe yourself options.
[**get_candidate_gcse_status**](TypesApi.md#get_candidate_gcse_status) | **GET** /api/types/candidate/gcse_status | Retrieves the list of candidate CGSE status.
[**get_candidate_initial_teacher_training_years**](TypesApi.md#get_candidate_initial_teacher_training_years) | **GET** /api/types/candidate/initial_teacher_training_years | Retrieves the list of candidate initial teacher training years.
[**get_candidate_journey_stages**](TypesApi.md#get_candidate_journey_stages) | **GET** /api/types/candidate/consideration_journey_stages | Retrieves the list of candidate consideration journey stages.
[**get_candidate_preferred_education_phases**](TypesApi.md#get_candidate_preferred_education_phases) | **GET** /api/types/candidate/preferred_education_phases | Retrieves the list of candidate preferred education phases.
[**get_candidate_retake_gcse_status**](TypesApi.md#get_candidate_retake_gcse_status) | **GET** /api/types/candidate/retake_gcse_status | Retrieves the list of candidate retake CGSE status.
[**get_candidate_types**](TypesApi.md#get_candidate_types) | **GET** /api/types/candidate/types | Retrieves the list of candidate types.
[**get_country_types**](TypesApi.md#get_country_types) | **GET** /api/types/countries | Retrieves the list of countries.
[**get_past_teaching_position_education_phases**](TypesApi.md#get_past_teaching_position_education_phases) | **GET** /api/types/past_teaching_position/education_phases | Retrieves the list of past teaching position education phases.
[**get_phone_call_channels**](TypesApi.md#get_phone_call_channels) | **GET** /api/types/phone_call/channels | Retrieves the list of phone call channels.
[**get_qualification_degree_status**](TypesApi.md#get_qualification_degree_status) | **GET** /api/types/qualification/degree_status | Retrieves the list of qualification degree status.
[**get_qualification_types**](TypesApi.md#get_qualification_types) | **GET** /api/types/qualification/types | Retrieves the list of qualification types.
[**get_qualification_uk_degree_grades**](TypesApi.md#get_qualification_uk_degree_grades) | **GET** /api/types/qualification/uk_degree_grades | Retrieves the list of qualification UK degree grades.
[**get_subscription_types**](TypesApi.md#get_subscription_types) | **GET** /api/types/service_subscription/types | Retrieves the list of subscription types.
[**get_teaching_event_registration_channels**](TypesApi.md#get_teaching_event_registration_channels) | **GET** /api/types/teaching_event_registration/channels | Retrieves the list of teaching event registration channels.
[**get_teaching_event_types**](TypesApi.md#get_teaching_event_types) | **GET** /api/types/teaching_event/types | Retrieves the list of teaching event types.
[**get_teaching_subjects**](TypesApi.md#get_teaching_subjects) | **GET** /api/types/teaching_subjects | Retrieves the list of teaching subjects.


# **get_candidate_adviser_eligibilities**
> Array&lt;TypeEntity&gt; get_candidate_adviser_eligibilities

Retrieves the list of candidate adviser eligibilities.

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
  #Retrieves the list of candidate adviser eligibilities.
  result = api_instance.get_candidate_adviser_eligibilities
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_candidate_adviser_eligibilities: #{e}"
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



# **get_candidate_adviser_requirements**
> Array&lt;TypeEntity&gt; get_candidate_adviser_requirements

Retrieves the list of candidate adviser requirements.

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
  #Retrieves the list of candidate adviser requirements.
  result = api_instance.get_candidate_adviser_requirements
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_candidate_adviser_requirements: #{e}"
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



# **get_candidate_assignment_status**
> Array&lt;TypeEntity&gt; get_candidate_assignment_status

Retrieves the list of candidate assignment status.

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
  #Retrieves the list of candidate assignment status.
  result = api_instance.get_candidate_assignment_status
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_candidate_assignment_status: #{e}"
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



# **get_candidate_describe_yourself_options**
> Array&lt;TypeEntity&gt; get_candidate_describe_yourself_options

Retrieves the list of candidate describe yourself options.

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
  #Retrieves the list of candidate describe yourself options.
  result = api_instance.get_candidate_describe_yourself_options
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_candidate_describe_yourself_options: #{e}"
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



# **get_candidate_gcse_status**
> Array&lt;TypeEntity&gt; get_candidate_gcse_status

Retrieves the list of candidate CGSE status.

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
  #Retrieves the list of candidate CGSE status.
  result = api_instance.get_candidate_gcse_status
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_candidate_gcse_status: #{e}"
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



# **get_candidate_journey_stages**
> Array&lt;TypeEntity&gt; get_candidate_journey_stages

Retrieves the list of candidate consideration journey stages.

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
  #Retrieves the list of candidate consideration journey stages.
  result = api_instance.get_candidate_journey_stages
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_candidate_journey_stages: #{e}"
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



# **get_candidate_retake_gcse_status**
> Array&lt;TypeEntity&gt; get_candidate_retake_gcse_status

Retrieves the list of candidate retake CGSE status.

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
  #Retrieves the list of candidate retake CGSE status.
  result = api_instance.get_candidate_retake_gcse_status
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_candidate_retake_gcse_status: #{e}"
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



# **get_candidate_types**
> Array&lt;TypeEntity&gt; get_candidate_types

Retrieves the list of candidate types.

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
  #Retrieves the list of candidate types.
  result = api_instance.get_candidate_types
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_candidate_types: #{e}"
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



# **get_qualification_uk_degree_grades**
> Array&lt;TypeEntity&gt; get_qualification_uk_degree_grades

Retrieves the list of qualification UK degree grades.

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
  #Retrieves the list of qualification UK degree grades.
  result = api_instance.get_qualification_uk_degree_grades
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_qualification_uk_degree_grades: #{e}"
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



# **get_subscription_types**
> Array&lt;TypeEntity&gt; get_subscription_types

Retrieves the list of subscription types.

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
  #Retrieves the list of subscription types.
  result = api_instance.get_subscription_types
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_subscription_types: #{e}"
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



# **get_teaching_event_registration_channels**
> Array&lt;TypeEntity&gt; get_teaching_event_registration_channels

Retrieves the list of teaching event registration channels.

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
  #Retrieves the list of teaching event registration channels.
  result = api_instance.get_teaching_event_registration_channels
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TypesApi->get_teaching_event_registration_channels: #{e}"
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



