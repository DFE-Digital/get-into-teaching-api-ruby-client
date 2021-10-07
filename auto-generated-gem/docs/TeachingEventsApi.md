# GetIntoTeachingApiClient::TeachingEventsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_teaching_event_attendee**](TeachingEventsApi.md#add_teaching_event_attendee) | **POST** /api/teaching_events/attendees | Adds an attendee to a teaching event.
[**exchange_access_token_for_teaching_event_add_attendee**](TeachingEventsApi.md#exchange_access_token_for_teaching_event_add_attendee) | **POST** /api/teaching_events/attendees/exchange_access_token/{accessToken} | Retrieves a pre-populated TeachingEventAddAttendee for the candidate.
[**exchange_unverified_request_for_teaching_event_add_attendee**](TeachingEventsApi.md#exchange_unverified_request_for_teaching_event_add_attendee) | **POST** /api/teaching_events/attendees/exchange_unverified_request | Retrieves a pre-populated TeachingEventAddAttendee for the candidate (allowing to proceed as unverified).
[**get_teaching_event**](TeachingEventsApi.md#get_teaching_event) | **GET** /api/teaching_events/{readableId} | Retrieves an event.
[**search_teaching_events_grouped_by_type**](TeachingEventsApi.md#search_teaching_events_grouped_by_type) | **GET** /api/teaching_events/search_grouped_by_type | Searches for teaching events, returning grouped by type.
[**upsert_teaching_event**](TeachingEventsApi.md#upsert_teaching_event) | **POST** /api/teaching_events | Adds or updates a teaching event.


# **add_teaching_event_attendee**
> add_teaching_event_attendee(body)

Adds an attendee to a teaching event.

                 If the `CandidateId` is specified then the existing candidate will be                  registered for the event, otherwise a new candidate will be created.

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



# **exchange_access_token_for_teaching_event_add_attendee**
> TeachingEventAddAttendee exchange_access_token_for_teaching_event_add_attendee(access_token, body)

Retrieves a pre-populated TeachingEventAddAttendee for the candidate.

                 Retrieves a pre-populated TeachingEventAddAttendee for the candidate. The `accessToken` is obtained from a                  `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                  exchanged for your token matches the request payload here).

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
  result = api_instance.exchange_access_token_for_teaching_event_add_attendee(access_token, body)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeachingEventsApi->exchange_access_token_for_teaching_event_add_attendee: #{e}"
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



# **exchange_unverified_request_for_teaching_event_add_attendee**
> TeachingEventAddAttendee exchange_unverified_request_for_teaching_event_add_attendee(body)

Retrieves a pre-populated TeachingEventAddAttendee for the candidate (allowing to proceed as unverified).

                         Retrieves a pre-populated TeachingEventAddAttendee for the candidate. This mechanism should be used with caution                         and the candidate should be treated as 'unverified' by the client.

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

body = GetIntoTeachingApiClient::ExistingCandidateRequest.new # ExistingCandidateRequest | Candidate access token request (must match an existing candidate).


begin
  #Retrieves a pre-populated TeachingEventAddAttendee for the candidate (allowing to proceed as unverified).
  result = api_instance.exchange_unverified_request_for_teaching_event_add_attendee(body)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeachingEventsApi->exchange_unverified_request_for_teaching_event_add_attendee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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



# **search_teaching_events_grouped_by_type**
> Array&lt;TeachingEventsByType&gt; search_teaching_events_grouped_by_type(opts)

Searches for teaching events, returning grouped by type.

Searches for teaching events. Optionally limit the results by distance (in miles) from a postcode, event type and start date.

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
  type_ids: [56], # Array<Integer> | 
  start_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  start_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  status_ids: [56], # Array<Integer> | 
  quantity_per_type: 3 # Integer | Quantity to return (per type).
}

begin
  #Searches for teaching events, returning grouped by type.
  result = api_instance.search_teaching_events_grouped_by_type(opts)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeachingEventsApi->search_teaching_events_grouped_by_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postcode** | **String**|  | [optional] 
 **radius** | **Integer**|  | [optional] 
 **type_ids** | [**Array&lt;Integer&gt;**](Integer.md)|  | [optional] 
 **start_after** | **DateTime**|  | [optional] 
 **start_before** | **DateTime**|  | [optional] 
 **status_ids** | [**Array&lt;Integer&gt;**](Integer.md)|  | [optional] 
 **quantity_per_type** | **Integer**| Quantity to return (per type). | [optional] [default to 3]

### Return type

[**Array&lt;TeachingEventsByType&gt;**](TeachingEventsByType.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **upsert_teaching_event**
> TeachingEvent upsert_teaching_event(body)

Adds or updates a teaching event.

If the `id` is specified then the existing teaching event will be updated, otherwise a new teaching event will be created.

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

body = GetIntoTeachingApiClient::TeachingEvent.new # TeachingEvent | Teaching event to upsert.


begin
  #Adds or updates a teaching event.
  result = api_instance.upsert_teaching_event(body)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeachingEventsApi->upsert_teaching_event: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TeachingEvent**](TeachingEvent.md)| Teaching event to upsert. | 

### Return type

[**TeachingEvent**](TeachingEvent.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



