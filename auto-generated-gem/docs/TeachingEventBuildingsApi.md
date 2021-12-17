# GetIntoTeachingApiClient::TeachingEventBuildingsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_teaching_event_buildings**](TeachingEventBuildingsApi.md#get_teaching_event_buildings) | **GET** /api/teaching_event_buildings | Retrieves all event buildings.

# **get_teaching_event_buildings**
> Array&lt;TeachingEventBuilding&gt; get_teaching_event_buildings

Retrieves all event buildings.

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

api_instance = GetIntoTeachingApiClient::TeachingEventBuildingsApi.new

begin
  #Retrieves all event buildings.
  result = api_instance.get_teaching_event_buildings
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeachingEventBuildingsApi->get_teaching_event_buildings: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TeachingEventBuilding&gt;**](TeachingEventBuilding.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



