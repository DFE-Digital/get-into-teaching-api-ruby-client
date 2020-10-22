# GetIntoTeachingApiClient::CallbackBookingQuotasApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_callback_booking_quotas**](CallbackBookingQuotasApi.md#get_callback_booking_quotas) | **GET** /api/callback_booking_quotas | Retrieves all callback booking quotas.


# **get_callback_booking_quotas**
> Array&lt;CallbackBookingQuota&gt; get_callback_booking_quotas(opts)

Retrieves all callback booking quotas.

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

api_instance = GetIntoTeachingApiClient::CallbackBookingQuotasApi.new

opts = { 
  x_client_ip: nil # Object | IP address of the end user or client application used for rate limiting. Will fall into a globally rate limited bucket if not specified.
}

begin
  #Retrieves all callback booking quotas.
  result = api_instance.get_callback_booking_quotas(opts)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling CallbackBookingQuotasApi->get_callback_booking_quotas: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_client_ip** | [**Object**](.md)| IP address of the end user or client application used for rate limiting. Will fall into a globally rate limited bucket if not specified. | [optional] 

### Return type

[**Array&lt;CallbackBookingQuota&gt;**](CallbackBookingQuota.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



