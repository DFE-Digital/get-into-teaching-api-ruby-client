# GetIntoTeachingApiClient::LookupItemsApi

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_countries**](LookupItemsApi.md#get_countries) | **GET** /api/lookup_items/countries | list countries |
| [**get_degree_countries**](LookupItemsApi.md#get_degree_countries) | **GET** /api/lookup_items/degree_countries | Retrieves the list of degree countries. |
| [**get_teaching_subjects**](LookupItemsApi.md#get_teaching_subjects) | **GET** /api/lookup_items/teaching_subjects | list teaching subjects |


## get_countries

> <Array<Country>> get_countries

list countries

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::LookupItemsApi.new

begin
  # list countries
  result = api_instance.get_countries
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling LookupItemsApi->get_countries: #{e}"
end
```

#### Using the get_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Country>>, Integer, Hash)> get_countries_with_http_info

```ruby
begin
  # list countries
  data, status_code, headers = api_instance.get_countries_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Country>>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling LookupItemsApi->get_countries_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Country&gt;**](Country.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_degree_countries

> <Array<Country>> get_degree_countries

Retrieves the list of degree countries.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::LookupItemsApi.new

begin
  # Retrieves the list of degree countries.
  result = api_instance.get_degree_countries
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling LookupItemsApi->get_degree_countries: #{e}"
end
```

#### Using the get_degree_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Country>>, Integer, Hash)> get_degree_countries_with_http_info

```ruby
begin
  # Retrieves the list of degree countries.
  data, status_code, headers = api_instance.get_degree_countries_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Country>>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling LookupItemsApi->get_degree_countries_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Country&gt;**](Country.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_teaching_subjects

> <Array<TeachingSubject>> get_teaching_subjects

list teaching subjects

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::LookupItemsApi.new

begin
  # list teaching subjects
  result = api_instance.get_teaching_subjects
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling LookupItemsApi->get_teaching_subjects: #{e}"
end
```

#### Using the get_teaching_subjects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TeachingSubject>>, Integer, Hash)> get_teaching_subjects_with_http_info

```ruby
begin
  # list teaching subjects
  data, status_code, headers = api_instance.get_teaching_subjects_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TeachingSubject>>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling LookupItemsApi->get_teaching_subjects_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;TeachingSubject&gt;**](TeachingSubject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

