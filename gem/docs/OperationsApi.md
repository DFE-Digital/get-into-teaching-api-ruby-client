# GetIntoTeachingApiClient::OperationsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_mapping_info**](OperationsApi.md#generate_mapping_info) | **GET** /api/operations/generate_mapping_info | Generates the mapping information.


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



