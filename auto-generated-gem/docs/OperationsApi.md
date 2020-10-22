# GetIntoTeachingApiClient::OperationsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_mapping_info**](OperationsApi.md#generate_mapping_info) | **GET** /api/operations/generate_mapping_info | Generates the mapping information.
[**health_check**](OperationsApi.md#health_check) | **GET** /api/operations/health_check | Performs a health check.
[**simulate_error**](OperationsApi.md#simulate_error) | **GET** /api/operations/simulate_error | Simulates a 500 error to test the Sentry integration.


# **generate_mapping_info**
> Array&lt;MappingInfo&gt; generate_mapping_info(opts)

Generates the mapping information.

Generates the mapping information describing how the models in the API map to the corresponding entities in Dynamics 365.

### Example
```ruby
# load the gem
require 'get_into_teaching_api_client'

api_instance = GetIntoTeachingApiClient::OperationsApi.new

opts = { 
  x_client_ip: nil # Object | IP address of the end user or client application used for rate limiting. Will fall into a globally rate limited bucket if not specified.
}

begin
  #Generates the mapping information.
  result = api_instance.generate_mapping_info(opts)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling OperationsApi->generate_mapping_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_client_ip** | [**Object**](.md)| IP address of the end user or client application used for rate limiting. Will fall into a globally rate limited bucket if not specified. | [optional] 

### Return type

[**Array&lt;MappingInfo&gt;**](MappingInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **health_check**
> HealthCheckResponse health_check(opts)

Performs a health check.

### Example
```ruby
# load the gem
require 'get_into_teaching_api_client'

api_instance = GetIntoTeachingApiClient::OperationsApi.new

opts = { 
  x_client_ip: nil # Object | IP address of the end user or client application used for rate limiting. Will fall into a globally rate limited bucket if not specified.
}

begin
  #Performs a health check.
  result = api_instance.health_check(opts)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling OperationsApi->health_check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_client_ip** | [**Object**](.md)| IP address of the end user or client application used for rate limiting. Will fall into a globally rate limited bucket if not specified. | [optional] 

### Return type

[**HealthCheckResponse**](HealthCheckResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **simulate_error**
> HealthCheckResponse simulate_error(opts)

Simulates a 500 error to test the Sentry integration.

### Example
```ruby
# load the gem
require 'get_into_teaching_api_client'

api_instance = GetIntoTeachingApiClient::OperationsApi.new

opts = { 
  x_client_ip: nil # Object | IP address of the end user or client application used for rate limiting. Will fall into a globally rate limited bucket if not specified.
}

begin
  #Simulates a 500 error to test the Sentry integration.
  result = api_instance.simulate_error(opts)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling OperationsApi->simulate_error: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_client_ip** | [**Object**](.md)| IP address of the end user or client application used for rate limiting. Will fall into a globally rate limited bucket if not specified. | [optional] 

### Return type

[**HealthCheckResponse**](HealthCheckResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



