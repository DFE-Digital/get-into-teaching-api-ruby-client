# GetIntoTeachingApiClient::TeachingEventsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_teaching_event_attendee**](TeachingEventsApi.md#add_teaching_event_attendee) | **POST** /api/teaching_events/attendees | Adds an attendee to a teaching event.
[**get_pre_filled_teaching_event_add_attendee**](TeachingEventsApi.md#get_pre_filled_teaching_event_add_attendee) | **POST** /api/teaching_events/attendees/{accessToken} | Retrieves a pre-populated TeachingEventAddAttendee for the candidate.
[**get_teaching_event**](TeachingEventsApi.md#get_teaching_event) | **GET** /api/teaching_events/{readableId} | Retrieves an event.
[**search_teaching_events**](TeachingEventsApi.md#search_teaching_events) | **GET** /api/teaching_events/search | Searches for teaching events.


# **add_teaching_event_attendee**
> add_teaching_event_attendee(body)

Adds an attendee to a teaching event.

If the `CandidateId` is specified then the existing candidate will be registered for the event, otherwise a new candidate will be created.  Validation errors may be present on the `TeachingEventAddAttendee` object as well as the hidden `Candidate` model that is mapped to; property names are consistent, so you should check for inclusion of the field in the key when linking an error message back to a property on the request model. For example, an error on `AcceptedPolicyId` can return under the keys `Candidate.PrivacyPolicy.AcceptedPolicyId` and `AcceptedPolicyId`.

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

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new

body = GetIntoTeachingApiClient::TeachingEventAddAttendee.new # TeachingEventAddAttendee | Attendee to add to the teaching event.


begin
  #Adds an attendee to a teaching event.
  api_instance.add_teaching_event_attendee(body)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeachingEventsApi->add_teaching_event_attendee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TeachingEventAddAttendee**](TeachingEventAddAttendee.md)| Attendee to add to the teaching event. | 

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **get_pre_filled_teaching_event_add_attendee**
> TeachingEventAddAttendee get_pre_filled_teaching_event_add_attendee(access_token, body)

Retrieves a pre-populated TeachingEventAddAttendee for the candidate.

  Retrieves a pre-populated TeachingEventAddAttendee for the candidate. The `accessToken` is obtained from a   `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you   exchanged for your token matches the request payload here).

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

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new

access_token = 'access_token_example' # String | Access token (PIN code).

body = GetIntoTeachingApiClient::ExistingCandidateRequest.new # ExistingCandidateRequest | Candidate access token request (must match an existing candidate).


begin
  #Retrieves a pre-populated TeachingEventAddAttendee for the candidate.
  result = api_instance.get_pre_filled_teaching_event_add_attendee(access_token, body)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeachingEventsApi->get_pre_filled_teaching_event_add_attendee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| Access token (PIN code). | 
 **body** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md)| Candidate access token request (must match an existing candidate). | 

### Return type

[**TeachingEventAddAttendee**](TeachingEventAddAttendee.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **get_teaching_event**
> TeachingEvent get_teaching_event(readable_id)

Retrieves an event.

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

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new

readable_id = 'readable_id_example' # String | The `readableId` of the `TeachingEvent`.


begin
  #Retrieves an event.
  result = api_instance.get_teaching_event(readable_id)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeachingEventsApi->get_teaching_event: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **readable_id** | **String**| The &#x60;readableId&#x60; of the &#x60;TeachingEvent&#x60;. | 

### Return type

[**TeachingEvent**](TeachingEvent.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **search_teaching_events**
> Array&lt;TeachingEvent&gt; search_teaching_events(opts)

Searches for teaching events.

Searches for teaching events by postcode. Optionally limit the results by distance (in miles) and the type of event.

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

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new

opts = { 
  postcode: 'postcode_example', # String | 
  radius: 56, # Integer | 
  type_id: 56, # Integer | 
  start_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  start_before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | 
}

begin
  #Searches for teaching events.
  result = api_instance.search_teaching_events(opts)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeachingEventsApi->search_teaching_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postcode** | **String**|  | [optional] 
 **radius** | **Integer**|  | [optional] 
 **type_id** | **Integer**|  | [optional] 
 **start_after** | **DateTime**|  | [optional] 
 **start_before** | **DateTime**|  | [optional] 

### Return type

[**Array&lt;TeachingEvent&gt;**](TeachingEvent.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


