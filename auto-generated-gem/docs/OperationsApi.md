# GetIntoTeachingApiClient::OperationsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**backfill_apply_candidates**](OperationsApi.md#backfill_apply_candidates) | **POST** /api/operations/backfill_apply_candidates | Triggers a backfill job to sync the CRM with the Apply candidates. |
| [**generate_mapping_info**](OperationsApi.md#generate_mapping_info) | **GET** /api/operations/generate_mapping_info | Generates the mapping information. |
| [**health_check**](OperationsApi.md#health_check) | **GET** /api/operations/health_check | Performs a health check. |
| [**pause_crm_integration**](OperationsApi.md#pause_crm_integration) | **PUT** /api/operations/pause_crm_integration | Temporarily pauses the integration with the CRM. |
| [**resume_crm_integration**](OperationsApi.md#resume_crm_integration) | **PUT** /api/operations/resume_crm_integration | Resumes the integration with the CRM (after being paused). |


## backfill_apply_candidates

> backfill_apply_candidates

Triggers a backfill job to sync the CRM with the Apply candidates.

The backfill will query all candidate information from the Apply API and queue jobs to sync the data with the CRM.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = GetIntoTeachingApiClient::OperationsApi.new

begin
  # Triggers a backfill job to sync the CRM with the Apply candidates.
  api_instance.backfill_apply_candidates
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling OperationsApi->backfill_apply_candidates: #{e}"
end
```

#### Using the backfill_apply_candidates_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> backfill_apply_candidates_with_http_info

```ruby
begin
  # Triggers a backfill job to sync the CRM with the Apply candidates.
  data, status_code, headers = api_instance.backfill_apply_candidates_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling OperationsApi->backfill_apply_candidates_with_http_info: #{e}"
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


## generate_mapping_info

> <Array<MappingInfo>> generate_mapping_info

Generates the mapping information.

Generates the mapping information describing how the models in the API map to the corresponding entities in Dynamics 365.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'

api_instance = GetIntoTeachingApiClient::OperationsApi.new

begin
  # Generates the mapping information.
  result = api_instance.generate_mapping_info
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling OperationsApi->generate_mapping_info: #{e}"
end
```

#### Using the generate_mapping_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MappingInfo>>, Integer, Hash)> generate_mapping_info_with_http_info

```ruby
begin
  # Generates the mapping information.
  data, status_code, headers = api_instance.generate_mapping_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MappingInfo>>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling OperationsApi->generate_mapping_info_with_http_info: #{e}"
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


## health_check

> <HealthCheckResponse> health_check

Performs a health check.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'

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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## pause_crm_integration

> <HealthCheckResponse> pause_crm_integration

Temporarily pauses the integration with the CRM.

The CRM is taken offline for updates occasionally; this can result in errors when the API attempts to call out to the CRM. The CRM can call this endpoint to pause the API -> CRM integration (if not manually resumed it will auto-resume in 6 hours).

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = GetIntoTeachingApiClient::OperationsApi.new

begin
  # Temporarily pauses the integration with the CRM.
  result = api_instance.pause_crm_integration
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling OperationsApi->pause_crm_integration: #{e}"
end
```

#### Using the pause_crm_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HealthCheckResponse>, Integer, Hash)> pause_crm_integration_with_http_info

```ruby
begin
  # Temporarily pauses the integration with the CRM.
  data, status_code, headers = api_instance.pause_crm_integration_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HealthCheckResponse>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling OperationsApi->pause_crm_integration_with_http_info: #{e}"
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


## resume_crm_integration

> <HealthCheckResponse> resume_crm_integration

Resumes the integration with the CRM (after being paused).

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = GetIntoTeachingApiClient::OperationsApi.new

begin
  # Resumes the integration with the CRM (after being paused).
  result = api_instance.resume_crm_integration
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling OperationsApi->resume_crm_integration: #{e}"
end
```

#### Using the resume_crm_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HealthCheckResponse>, Integer, Hash)> resume_crm_integration_with_http_info

```ruby
begin
  # Resumes the integration with the CRM (after being paused).
  data, status_code, headers = api_instance.resume_crm_integration_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HealthCheckResponse>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling OperationsApi->resume_crm_integration_with_http_info: #{e}"
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

