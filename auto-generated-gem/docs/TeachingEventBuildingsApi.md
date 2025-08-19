# GetIntoTeachingApiClient::TeachingEventBuildingsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_teaching_event_buildings**](TeachingEventBuildingsApi.md#get_teaching_event_buildings) | **GET** /api/teaching_event_buildings | Retrieves all event buildings. |


## get_teaching_event_buildings

> <Array<TeachingEventBuilding>> get_teaching_event_buildings

Retrieves all event buildings.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = GetIntoTeachingApiClient::TeachingEventBuildingsApi.new

begin
  # Retrieves all event buildings.
  result = api_instance.get_teaching_event_buildings
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeachingEventBuildingsApi->get_teaching_event_buildings: #{e}"
end
```

#### Using the get_teaching_event_buildings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TeachingEventBuilding>>, Integer, Hash)> get_teaching_event_buildings_with_http_info

```ruby
begin
  # Retrieves all event buildings.
  data, status_code, headers = api_instance.get_teaching_event_buildings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TeachingEventBuilding>>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeachingEventBuildingsApi->get_teaching_event_buildings_with_http_info: #{e}"
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

