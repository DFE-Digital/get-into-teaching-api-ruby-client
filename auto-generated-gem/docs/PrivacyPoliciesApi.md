# GetIntoTeachingApiClient::PrivacyPoliciesApi

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_latest_privacy_policy**](PrivacyPoliciesApi.md#get_latest_privacy_policy) | **GET** /api/privacy_policies/latest | Retrieves the latest privacy policy. |
| [**get_privacy_policy**](PrivacyPoliciesApi.md#get_privacy_policy) | **GET** /api/privacy_policies/{id} | Retrieves a privacy policy. |


## get_latest_privacy_policy

> <PrivacyPolicy> get_latest_privacy_policy

Retrieves the latest privacy policy.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::PrivacyPoliciesApi.new

begin
  # Retrieves the latest privacy policy.
  result = api_instance.get_latest_privacy_policy
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling PrivacyPoliciesApi->get_latest_privacy_policy: #{e}"
end
```

#### Using the get_latest_privacy_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivacyPolicy>, Integer, Hash)> get_latest_privacy_policy_with_http_info

```ruby
begin
  # Retrieves the latest privacy policy.
  data, status_code, headers = api_instance.get_latest_privacy_policy_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivacyPolicy>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling PrivacyPoliciesApi->get_latest_privacy_policy_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PrivacyPolicy**](PrivacyPolicy.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_privacy_policy

> <PrivacyPolicy> get_privacy_policy(id)

Retrieves a privacy policy.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::PrivacyPoliciesApi.new
id = 'id_example' # String | The id of the privacy policy.

begin
  # Retrieves a privacy policy.
  result = api_instance.get_privacy_policy(id)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling PrivacyPoliciesApi->get_privacy_policy: #{e}"
end
```

#### Using the get_privacy_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivacyPolicy>, Integer, Hash)> get_privacy_policy_with_http_info(id)

```ruby
begin
  # Retrieves a privacy policy.
  data, status_code, headers = api_instance.get_privacy_policy_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivacyPolicy>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling PrivacyPoliciesApi->get_privacy_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the privacy policy. |  |

### Return type

[**PrivacyPolicy**](PrivacyPolicy.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

