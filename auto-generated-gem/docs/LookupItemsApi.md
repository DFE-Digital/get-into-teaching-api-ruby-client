# GetIntoTeachingApiClient::LookupItemsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_countries**](LookupItemsApi.md#get_countries) | **GET** /api/lookup_items/countries | Retrieves the list of countries.
[**get_teaching_subjects**](LookupItemsApi.md#get_teaching_subjects) | **GET** /api/lookup_items/teaching_subjects | Retrieves the list of teaching subjects.

# **get_countries**
> Array&lt;LookupItem&gt; get_countries

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

api_instance = GetIntoTeachingApiClient::LookupItemsApi.new

begin
  #Retrieves the list of countries.
  result = api_instance.get_countries
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling LookupItemsApi->get_countries: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;LookupItem&gt;**](LookupItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_teaching_subjects**
> Array&lt;LookupItem&gt; get_teaching_subjects

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

api_instance = GetIntoTeachingApiClient::LookupItemsApi.new

begin
  #Retrieves the list of teaching subjects.
  result = api_instance.get_teaching_subjects
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling LookupItemsApi->get_teaching_subjects: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;LookupItem&gt;**](LookupItem.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



