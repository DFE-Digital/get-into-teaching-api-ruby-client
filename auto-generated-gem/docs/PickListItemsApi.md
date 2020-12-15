# GetIntoTeachingApiClient::PickListItemsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_candidate_adviser_eligibilities**](PickListItemsApi.md#get_candidate_adviser_eligibilities) | **GET** /api/pick_list_items/candidate/adviser_eligibilities | Retrieves the list of candidate adviser eligibilities.
[**get_candidate_adviser_requirements**](PickListItemsApi.md#get_candidate_adviser_requirements) | **GET** /api/pick_list_items/candidate/adviser_requirements | Retrieves the list of candidate adviser requirements.
[**get_candidate_assignment_status**](PickListItemsApi.md#get_candidate_assignment_status) | **GET** /api/pick_list_items/candidate/assignment_status | Retrieves the list of candidate assignment status.
[**get_candidate_channels**](PickListItemsApi.md#get_candidate_channels) | **GET** /api/pick_list_items/candidate/channels | Retrieves the list of candidate channels.
[**get_candidate_event_subscription_channels**](PickListItemsApi.md#get_candidate_event_subscription_channels) | **GET** /api/pick_list_items/candidate/event_subscription_channels | Retrieves the list of candidate event subscription channels.
[**get_candidate_gcse_status**](PickListItemsApi.md#get_candidate_gcse_status) | **GET** /api/pick_list_items/candidate/gcse_status | Retrieves the list of candidate GCSE status.
[**get_candidate_initial_teacher_training_years**](PickListItemsApi.md#get_candidate_initial_teacher_training_years) | **GET** /api/pick_list_items/candidate/initial_teacher_training_years | Retrieves the list of candidate initial teacher training years.
[**get_candidate_journey_stages**](PickListItemsApi.md#get_candidate_journey_stages) | **GET** /api/pick_list_items/candidate/consideration_journey_stages | Retrieves the list of candidate consideration journey stages.
[**get_candidate_mailing_list_subscription_channels**](PickListItemsApi.md#get_candidate_mailing_list_subscription_channels) | **GET** /api/pick_list_items/candidate/mailing_list_subscription_channels | Retrieves the list of candidate mailing list subscription channels.
[**get_candidate_preferred_education_phases**](PickListItemsApi.md#get_candidate_preferred_education_phases) | **GET** /api/pick_list_items/candidate/preferred_education_phases | Retrieves the list of candidate preferred education phases.
[**get_candidate_retake_gcse_status**](PickListItemsApi.md#get_candidate_retake_gcse_status) | **GET** /api/pick_list_items/candidate/retake_gcse_status | Retrieves the list of candidate retake GCSE status.
[**get_candidate_types**](PickListItemsApi.md#get_candidate_types) | **GET** /api/pick_list_items/candidate/types | Retrieves the list of candidate types.
[**get_past_teaching_position_education_phases**](PickListItemsApi.md#get_past_teaching_position_education_phases) | **GET** /api/pick_list_items/past_teaching_position/education_phases | Retrieves the list of past teaching position education phases.
[**get_phone_call_channels**](PickListItemsApi.md#get_phone_call_channels) | **GET** /api/pick_list_items/phone_call/channels | Retrieves the list of phone call channels.
[**get_qualification_degree_status**](PickListItemsApi.md#get_qualification_degree_status) | **GET** /api/pick_list_items/qualification/degree_status | Retrieves the list of qualification degree status.
[**get_qualification_types**](PickListItemsApi.md#get_qualification_types) | **GET** /api/pick_list_items/qualification/types | Retrieves the list of qualification types.
[**get_qualification_uk_degree_grades**](PickListItemsApi.md#get_qualification_uk_degree_grades) | **GET** /api/pick_list_items/qualification/uk_degree_grades | Retrieves the list of qualification UK degree grades.
[**get_subscription_types**](PickListItemsApi.md#get_subscription_types) | **GET** /api/pick_list_items/service_subscription/types | Retrieves the list of subscription types.
[**get_teaching_event_registration_channels**](PickListItemsApi.md#get_teaching_event_registration_channels) | **GET** /api/pick_list_items/teaching_event_registration/channels | Retrieves the list of teaching event registration channels.
[**get_teaching_event_status**](PickListItemsApi.md#get_teaching_event_status) | **GET** /api/pick_list_items/teaching_event/status | Retrieves the list of teaching event status.
[**get_teaching_event_types**](PickListItemsApi.md#get_teaching_event_types) | **GET** /api/pick_list_items/teaching_event/types | Retrieves the list of teaching event types.


# **get_candidate_adviser_eligibilities**
> Array&lt;PickListItem&gt; get_candidate_adviser_eligibilities

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of candidate adviser eligibilities.
  result = api_instance.get_candidate_adviser_eligibilities
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_candidate_adviser_eligibilities: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_candidate_adviser_requirements**
> Array&lt;PickListItem&gt; get_candidate_adviser_requirements

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of candidate adviser requirements.
  result = api_instance.get_candidate_adviser_requirements
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_candidate_adviser_requirements: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_candidate_assignment_status**
> Array&lt;PickListItem&gt; get_candidate_assignment_status

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of candidate assignment status.
  result = api_instance.get_candidate_assignment_status
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_candidate_assignment_status: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_candidate_channels**
> Array&lt;PickListItem&gt; get_candidate_channels

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of candidate channels.
  result = api_instance.get_candidate_channels
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_candidate_channels: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_candidate_event_subscription_channels**
> Array&lt;PickListItem&gt; get_candidate_event_subscription_channels

Retrieves the list of candidate event subscription channels.

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of candidate event subscription channels.
  result = api_instance.get_candidate_event_subscription_channels
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_candidate_event_subscription_channels: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_candidate_gcse_status**
> Array&lt;PickListItem&gt; get_candidate_gcse_status

Retrieves the list of candidate GCSE status.

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of candidate GCSE status.
  result = api_instance.get_candidate_gcse_status
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_candidate_gcse_status: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_candidate_initial_teacher_training_years**
> Array&lt;PickListItem&gt; get_candidate_initial_teacher_training_years

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of candidate initial teacher training years.
  result = api_instance.get_candidate_initial_teacher_training_years
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_candidate_initial_teacher_training_years: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_candidate_journey_stages**
> Array&lt;PickListItem&gt; get_candidate_journey_stages

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of candidate consideration journey stages.
  result = api_instance.get_candidate_journey_stages
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_candidate_journey_stages: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_candidate_mailing_list_subscription_channels**
> Array&lt;PickListItem&gt; get_candidate_mailing_list_subscription_channels

Retrieves the list of candidate mailing list subscription channels.

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of candidate mailing list subscription channels.
  result = api_instance.get_candidate_mailing_list_subscription_channels
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_candidate_mailing_list_subscription_channels: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_candidate_preferred_education_phases**
> Array&lt;PickListItem&gt; get_candidate_preferred_education_phases

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of candidate preferred education phases.
  result = api_instance.get_candidate_preferred_education_phases
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_candidate_preferred_education_phases: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_candidate_retake_gcse_status**
> Array&lt;PickListItem&gt; get_candidate_retake_gcse_status

Retrieves the list of candidate retake GCSE status.

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of candidate retake GCSE status.
  result = api_instance.get_candidate_retake_gcse_status
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_candidate_retake_gcse_status: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_candidate_types**
> Array&lt;PickListItem&gt; get_candidate_types

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of candidate types.
  result = api_instance.get_candidate_types
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_candidate_types: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_past_teaching_position_education_phases**
> Array&lt;PickListItem&gt; get_past_teaching_position_education_phases

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of past teaching position education phases.
  result = api_instance.get_past_teaching_position_education_phases
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_past_teaching_position_education_phases: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_phone_call_channels**
> Array&lt;PickListItem&gt; get_phone_call_channels

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of phone call channels.
  result = api_instance.get_phone_call_channels
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_phone_call_channels: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_qualification_degree_status**
> Array&lt;PickListItem&gt; get_qualification_degree_status

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of qualification degree status.
  result = api_instance.get_qualification_degree_status
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_qualification_degree_status: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_qualification_types**
> Array&lt;PickListItem&gt; get_qualification_types

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of qualification types.
  result = api_instance.get_qualification_types
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_qualification_types: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_qualification_uk_degree_grades**
> Array&lt;PickListItem&gt; get_qualification_uk_degree_grades

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of qualification UK degree grades.
  result = api_instance.get_qualification_uk_degree_grades
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_qualification_uk_degree_grades: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_subscription_types**
> Array&lt;PickListItem&gt; get_subscription_types

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of subscription types.
  result = api_instance.get_subscription_types
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_subscription_types: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_teaching_event_registration_channels**
> Array&lt;PickListItem&gt; get_teaching_event_registration_channels

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of teaching event registration channels.
  result = api_instance.get_teaching_event_registration_channels
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_teaching_event_registration_channels: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_teaching_event_status**
> Array&lt;PickListItem&gt; get_teaching_event_status

Retrieves the list of teaching event status.

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of teaching event status.
  result = api_instance.get_teaching_event_status
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_teaching_event_status: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_teaching_event_types**
> Array&lt;PickListItem&gt; get_teaching_event_types

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

api_instance = GetIntoTeachingApiClient::PickListItemsApi.new

begin
  #Retrieves the list of teaching event types.
  result = api_instance.get_teaching_event_types
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling PickListItemsApi->get_teaching_event_types: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PickListItem&gt;**](PickListItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



