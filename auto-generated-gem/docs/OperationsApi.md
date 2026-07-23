# GetIntoTeachingApiClient::OperationsApi

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**health_check**](OperationsApi.md#health_check) | **GET** /api/operations/health_check | Performs a health check. |


## health_check

> <HealthCheckResponse> health_check

Performs a health check.

Checks the health of the API and its dependencies.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::OperationsApi.new

begin
  # Performs a health check.
  result = api_instance.health_check
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling OperationsApi->health_check: #{e}"
end
```

#### Using the health_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HealthCheckResponse>, Integer, Hash)> health_check_with_http_info

```ruby
begin
  # Performs a health check.
  data, status_code, headers = api_instance.health_check_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HealthCheckResponse>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling OperationsApi->health_check_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**HealthCheckResponse**](HealthCheckResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

