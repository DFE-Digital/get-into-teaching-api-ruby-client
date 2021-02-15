# GetIntoTeachingApiClient::OperationsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_mapping_info**](OperationsApi.md#generate_mapping_info) | **GET** /api/operations/generate_mapping_info | Generates the mapping information.
[**health_check**](OperationsApi.md#health_check) | **GET** /api/operations/health_check | Performs a health check.
[**patch_test**](OperationsApi.md#patch_test) | **PATCH** /api/operations/patch_test | A test endpoint to see how patch requests get generated in the Ruby API client.
[**simulate_error**](OperationsApi.md#simulate_error) | **GET** /api/operations/simulate_error | Simulates a 500 error to test the Sentry integration.


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



# **patch_test**
> patch_test(body)

A test endpoint to see how patch requests get generated in the Ruby API client.

### Example
```ruby
# load the gem
require 'get_into_teaching_api_client'

api_instance = GetIntoTeachingApiClient::OperationsApi.new

body = GetIntoTeachingApiClient::JsonPatchDocument.new # JsonPatchDocument | Member to add to the mailing list.


begin
  #A test endpoint to see how patch requests get generated in the Ruby API client.
  api_instance.patch_test(body)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling OperationsApi->patch_test: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**JsonPatchDocument**](JsonPatchDocument.md)| Member to add to the mailing list. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/*+json
 - **Accept**: Not defined



# **simulate_error**
> HealthCheckResponse simulate_error

Simulates a 500 error to test the Sentry integration.

### Example
```ruby
# load the gem
require 'get_into_teaching_api_client'

api_instance = GetIntoTeachingApiClient::OperationsApi.new

begin
  #Simulates a 500 error to test the Sentry integration.
  result = api_instance.simulate_error
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling OperationsApi->simulate_error: #{e}"
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



