# GetIntoTeachingApiClient::TeachingEventsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_teaching_event_attendee**](TeachingEventsApi.md#add_teaching_event_attendee) | **POST** /api/teaching_events/attendees | Adds an attendee to a teaching event.
[**get_pre_filled_teaching_event_add_attendee**](TeachingEventsApi.md#get_pre_filled_teaching_event_add_attendee) | **POST** /api/teaching_events/attendees/{accessToken} | Retrieves a pre-populated TeachingEventAddAttendee for the candidate.
[**get_teaching_event**](TeachingEventsApi.md#get_teaching_event) | **GET** /api/teaching_events/{id} | Retrieves an event.
[**get_upcoming_teaching_events**](TeachingEventsApi.md#get_upcoming_teaching_events) | **GET** /api/teaching_events/upcoming | Retrieves the upcoming teaching events.
[**search_teaching_events**](TeachingEventsApi.md#search_teaching_events) | **GET** /api/teaching_events/search | Searches for teaching events.


# **add_teaching_event_attendee**
> add_teaching_event_attendee(body)

Adds an attendee to a teaching event.

If the `CandidateId` is specified then the existing candidate will be registered for the event, otherwise a new candidate will be created.

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
> TeachingEvent get_teaching_event(id)

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

id = 'id_example' # String | The `id` of the `TeachingEvent`.


begin
  #Retrieves an event.
  result = api_instance.get_teaching_event(id)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeachingEventsApi->get_teaching_event: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The &#x60;id&#x60; of the &#x60;TeachingEvent&#x60;. | 

### Return type

[**TeachingEvent**](TeachingEvent.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



# **get_upcoming_teaching_events**
> Array&lt;TeachingEvent&gt; get_upcoming_teaching_events(opts)

Retrieves the upcoming teaching events.

  Retrieves the upcoming teaching events; limited to 10 by default, but this can be increased to a   maximum of 50 using the `limit` query parameter.

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
  limit: 10 # Integer | Number of results to return (maximum of 50).
}

begin
  #Retrieves the upcoming teaching events.
  result = api_instance.get_upcoming_teaching_events(opts)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling TeachingEventsApi->get_upcoming_teaching_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of results to return (maximum of 50). | [optional] [default to 10]

### Return type

[**Array&lt;TeachingEvent&gt;**](TeachingEvent.md)

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
  start_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  radius_in_km: 1.2 # Float | 
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
 **radius_in_km** | **Float**|  | [optional] 

### Return type

[**Array&lt;TeachingEvent&gt;**](TeachingEvent.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



