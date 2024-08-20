# GetIntoTeachingApiClient::TeachingEventsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_teaching_event_attendee**](TeachingEventsApi.md#add_teaching_event_attendee) | **POST** /api/teaching_events/attendees | Adds an attendee to a teaching event. |
| [**exchange_access_token_for_teaching_event_add_attendee**](TeachingEventsApi.md#exchange_access_token_for_teaching_event_add_attendee) | **POST** /api/teaching_events/attendees/exchange_access_token/{accessToken} | Retrieves a pre-populated TeachingEventAddAttendee for the candidate. |
| [**exchange_unverified_request_for_teaching_event_add_attendee**](TeachingEventsApi.md#exchange_unverified_request_for_teaching_event_add_attendee) | **POST** /api/teaching_events/attendees/exchange_unverified_request | Retrieves a pre-populated TeachingEventAddAttendee for the candidate (allowing to proceed as unverified). |
| [**get_teaching_event**](TeachingEventsApi.md#get_teaching_event) | **GET** /api/teaching_events/{readableId} | Retrieves an event. |
| [**search_teaching_events**](TeachingEventsApi.md#search_teaching_events) | **GET** /api/teaching_events/search | Searches for teaching events. |
| [**upsert_teaching_event**](TeachingEventsApi.md#upsert_teaching_event) | **POST** /api/teaching_events | Adds or updates a teaching event. |


## add_teaching_event_attendee

> add_teaching_event_attendee(teaching_event_add_attendee)

Adds an attendee to a teaching event.

                 If the `CandidateId` is specified then the existing candidate will be                  registered for the event, otherwise a new candidate will be created.

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

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new
teaching_event_add_attendee = GetIntoTeachingApiClient::TeachingEventAddAttendee.new({event_id: 'event_id_example', accepted_policy_id: 'accepted_policy_id_example', email: 'email_example', first_name: 'first_name_example', last_name: 'last_name_example'}) # TeachingEventAddAttendee | Attendee to add to the teaching event.

begin
  # Adds an attendee to a teaching event.
  api_instance.add_teaching_event_attendee(teaching_event_add_attendee)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeachingEventsApi->add_teaching_event_attendee: #{e}"
end
```

#### Using the add_teaching_event_attendee_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_teaching_event_attendee_with_http_info(teaching_event_add_attendee)

```ruby
begin
  # Adds an attendee to a teaching event.
  data, status_code, headers = api_instance.add_teaching_event_attendee_with_http_info(teaching_event_add_attendee)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeachingEventsApi->add_teaching_event_attendee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teaching_event_add_attendee** | [**TeachingEventAddAttendee**](TeachingEventAddAttendee.md) | Attendee to add to the teaching event. |  |

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## exchange_access_token_for_teaching_event_add_attendee

> <TeachingEventAddAttendee> exchange_access_token_for_teaching_event_add_attendee(access_token, existing_candidate_request)

Retrieves a pre-populated TeachingEventAddAttendee for the candidate.

                 Retrieves a pre-populated TeachingEventAddAttendee for the candidate. The `accessToken` is obtained from a                  `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                  exchanged for your token matches the request payload here).

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

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new
access_token = 'access_token_example' # String | Access token (PIN code).
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'email_example'}) # ExistingCandidateRequest | Candidate access token request (must match an existing candidate).

begin
  # Retrieves a pre-populated TeachingEventAddAttendee for the candidate.
  result = api_instance.exchange_access_token_for_teaching_event_add_attendee(access_token, existing_candidate_request)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeachingEventsApi->exchange_access_token_for_teaching_event_add_attendee: #{e}"
end
```

#### Using the exchange_access_token_for_teaching_event_add_attendee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeachingEventAddAttendee>, Integer, Hash)> exchange_access_token_for_teaching_event_add_attendee_with_http_info(access_token, existing_candidate_request)

```ruby
begin
  # Retrieves a pre-populated TeachingEventAddAttendee for the candidate.
  data, status_code, headers = api_instance.exchange_access_token_for_teaching_event_add_attendee_with_http_info(access_token, existing_candidate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeachingEventAddAttendee>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeachingEventsApi->exchange_access_token_for_teaching_event_add_attendee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | Access token (PIN code). |  |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate access token request (must match an existing candidate). |  |

### Return type

[**TeachingEventAddAttendee**](TeachingEventAddAttendee.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## exchange_unverified_request_for_teaching_event_add_attendee

> <TeachingEventAddAttendee> exchange_unverified_request_for_teaching_event_add_attendee(existing_candidate_request)

Retrieves a pre-populated TeachingEventAddAttendee for the candidate (allowing to proceed as unverified).

                         Retrieves a pre-populated TeachingEventAddAttendee for the candidate. This mechanism should be used with caution                         and the candidate should be treated as 'unverified' by the client.

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

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'email_example'}) # ExistingCandidateRequest | Candidate access token request (must match an existing candidate).

begin
  # Retrieves a pre-populated TeachingEventAddAttendee for the candidate (allowing to proceed as unverified).
  result = api_instance.exchange_unverified_request_for_teaching_event_add_attendee(existing_candidate_request)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeachingEventsApi->exchange_unverified_request_for_teaching_event_add_attendee: #{e}"
end
```

#### Using the exchange_unverified_request_for_teaching_event_add_attendee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeachingEventAddAttendee>, Integer, Hash)> exchange_unverified_request_for_teaching_event_add_attendee_with_http_info(existing_candidate_request)

```ruby
begin
  # Retrieves a pre-populated TeachingEventAddAttendee for the candidate (allowing to proceed as unverified).
  data, status_code, headers = api_instance.exchange_unverified_request_for_teaching_event_add_attendee_with_http_info(existing_candidate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeachingEventAddAttendee>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeachingEventsApi->exchange_unverified_request_for_teaching_event_add_attendee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate access token request (must match an existing candidate). |  |

### Return type

[**TeachingEventAddAttendee**](TeachingEventAddAttendee.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## get_teaching_event

> <TeachingEvent> get_teaching_event(readable_id)

Retrieves an event.

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

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new
readable_id = 'readable_id_example' # String | The `readableId` of the `TeachingEvent`.

begin
  # Retrieves an event.
  result = api_instance.get_teaching_event(readable_id)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeachingEventsApi->get_teaching_event: #{e}"
end
```

#### Using the get_teaching_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeachingEvent>, Integer, Hash)> get_teaching_event_with_http_info(readable_id)

```ruby
begin
  # Retrieves an event.
  data, status_code, headers = api_instance.get_teaching_event_with_http_info(readable_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeachingEvent>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeachingEventsApi->get_teaching_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **readable_id** | **String** | The &#x60;readableId&#x60; of the &#x60;TeachingEvent&#x60;. |  |

### Return type

[**TeachingEvent**](TeachingEvent.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## search_teaching_events

> <Array<TeachingEvent>> search_teaching_events(opts)

Searches for teaching events.

Searches for teaching events. Optionally limit the results by distance (in miles) from a postcode, event type and start date.

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

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new
opts = {
  postcode: 'postcode_example', # String | Postcode to center search around.
  radius: 56, # Integer | Set to filter results to a radius (in miles) around the postcode.
  type_ids: [37], # Array<Integer> | Set to filter results to a type of teaching event. Each ID must match a `typeId` of the `TeachingEvent` schema.
  online: true, # Boolean | Set to true to return only online events and false to return only in-person events.
  start_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Set to filter results to those that start after a given date.
  start_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Set to filter results to those that start before a given date.
  status_ids: [37], # Array<Integer> | Set to filter results by event status.
  quantity: 56 # Integer | Quantity to return.
}

begin
  # Searches for teaching events.
  result = api_instance.search_teaching_events(opts)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeachingEventsApi->search_teaching_events: #{e}"
end
```

#### Using the search_teaching_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TeachingEvent>>, Integer, Hash)> search_teaching_events_with_http_info(opts)

```ruby
begin
  # Searches for teaching events.
  data, status_code, headers = api_instance.search_teaching_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TeachingEvent>>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeachingEventsApi->search_teaching_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **postcode** | **String** | Postcode to center search around. | [optional] |
| **radius** | **Integer** | Set to filter results to a radius (in miles) around the postcode. | [optional] |
| **type_ids** | [**Array&lt;Integer&gt;**](Integer.md) | Set to filter results to a type of teaching event. Each ID must match a &#x60;typeId&#x60; of the &#x60;TeachingEvent&#x60; schema. | [optional] |
| **online** | **Boolean** | Set to true to return only online events and false to return only in-person events. | [optional] |
| **start_after** | **Time** | Set to filter results to those that start after a given date. | [optional] |
| **start_before** | **Time** | Set to filter results to those that start before a given date. | [optional] |
| **status_ids** | [**Array&lt;Integer&gt;**](Integer.md) | Set to filter results by event status. | [optional] |
| **quantity** | **Integer** | Quantity to return. | [optional][default to 10] |

### Return type

[**Array&lt;TeachingEvent&gt;**](TeachingEvent.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## upsert_teaching_event

> <TeachingEvent> upsert_teaching_event(teaching_event)

Adds or updates a teaching event.

If the `id` is specified then the existing teaching event will be updated, otherwise a new teaching event will be created.

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

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new
teaching_event = GetIntoTeachingApiClient::TeachingEvent.new({readable_id: 'readable_id_example', name: 'name_example'}) # TeachingEvent | Teaching event to upsert.

begin
  # Adds or updates a teaching event.
  result = api_instance.upsert_teaching_event(teaching_event)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeachingEventsApi->upsert_teaching_event: #{e}"
end
```

#### Using the upsert_teaching_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeachingEvent>, Integer, Hash)> upsert_teaching_event_with_http_info(teaching_event)

```ruby
begin
  # Adds or updates a teaching event.
  data, status_code, headers = api_instance.upsert_teaching_event_with_http_info(teaching_event)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeachingEvent>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling TeachingEventsApi->upsert_teaching_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teaching_event** | [**TeachingEvent**](TeachingEvent.md) | Teaching event to upsert. |  |

### Return type

[**TeachingEvent**](TeachingEvent.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

