# GetIntoTeachingApiClient::OperationsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**backfill_find_apply_candidates**](OperationsApi.md#backfill_find_apply_candidates) | **POST** /api/operations/backfill_find_apply_candidates | Triggers a backfill job to sync the CRM with the Find/Apply candidates.
[**generate_mapping_info**](OperationsApi.md#generate_mapping_info) | **GET** /api/operations/generate_mapping_info | Generates the mapping information.
[**health_check**](OperationsApi.md#health_check) | **GET** /api/operations/health_check | Performs a health check.
[**pause_crm_integration**](OperationsApi.md#pause_crm_integration) | **PUT** /api/operations/pause_crm_integration | Temporarily pauses the integration with the CRM.
[**resume_crm_integration**](OperationsApi.md#resume_crm_integration) | **PUT** /api/operations/resume_crm_integration | Resumes the integration with the CRM (after being paused).

# **backfill_find_apply_candidates**
> backfill_find_apply_candidates

Triggers a backfill job to sync the CRM with the Find/Apply candidates.

The backfill will query all candidate information from the Find/Apply API and queue jobs to sync the data with the CRM.

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

api_instance = GetIntoTeachingApiClient::OperationsApi.new

begin
  #Triggers a backfill job to sync the CRM with the Find/Apply candidates.
  api_instance.backfill_find_apply_candidates
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling OperationsApi->backfill_find_apply_candidates: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **generate_mapping_info**
> Array&lt;MappingInfo&gt; generate_mapping_info

Generates the mapping information.

Generates the mapping information describing how the models in the API map to the corresponding entities in Dynamics 365.

### Example
```ruby
# load the gem
require 'get_into_teaching_api_client'

api_instance = GetIntoTeachingApiClient::OperationsApi.new

begin
  #Generates the mapping information.
  result = api_instance.generate_mapping_info
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling OperationsApi->generate_mapping_info: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;MappingInfo&gt;**](MappingInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **health_check**
> HealthCheckResponse health_check

Performs a health check.

### Example
```ruby
# load the gem
require 'get_into_teaching_api_client'

api_instance = GetIntoTeachingApiClient::OperationsApi.new

begin
  #Performs a health check.
  result = api_instance.health_check
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling OperationsApi->health_check: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthCheckResponse**](HealthCheckResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **pause_crm_integration**
> HealthCheckResponse pause_crm_integration

Temporarily pauses the integration with the CRM.

The CRM is taken offline for updates occasionally; this can result in errors when the API attempts to call out to the CRM. The CRM can call this endpoint to pause the API -> CRM integration (if not manually resumed it will auto-resume in 6 hours).

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

api_instance = GetIntoTeachingApiClient::OperationsApi.new

begin
  #Temporarily pauses the integration with the CRM.
  result = api_instance.pause_crm_integration
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling OperationsApi->pause_crm_integration: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthCheckResponse**](HealthCheckResponse.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **resume_crm_integration**
> HealthCheckResponse resume_crm_integration

Resumes the integration with the CRM (after being paused).

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

api_instance = GetIntoTeachingApiClient::OperationsApi.new

begin
  #Resumes the integration with the CRM (after being paused).
  result = api_instance.resume_crm_integration
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling OperationsApi->resume_crm_integration: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthCheckResponse**](HealthCheckResponse.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



