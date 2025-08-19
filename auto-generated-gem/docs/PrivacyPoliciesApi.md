# GetIntoTeachingApiClient::PrivacyPoliciesApi

All URIs are relative to *http://localhost*

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
  # Configure API key authorization: apiKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
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

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_privacy_policy

> <PrivacyPolicy> get_privacy_policy(id)

Retrieves a privacy policy.

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

api_instance = GetIntoTeachingApiClient::PrivacyPoliciesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The `id` of the `PrivacyPolicy`.

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
| **id** | **String** | The &#x60;id&#x60; of the &#x60;PrivacyPolicy&#x60;. |  |

### Return type

[**PrivacyPolicy**](PrivacyPolicy.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

