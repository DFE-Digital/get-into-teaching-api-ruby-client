# GetIntoTeachingApiClient::TeachingEventsApi

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_teaching_event_attendee**](TeachingEventsApi.md#add_teaching_event_attendee) | **POST** /api/teaching_events/attendees | Adds an attendee to a teaching event. |
| [**exchange_access_token_for_teaching_event_add_attendee**](TeachingEventsApi.md#exchange_access_token_for_teaching_event_add_attendee) | **POST** /api/teaching_events/attendees/exchange_access_token/{access_token} | Retrieves a pre-populated attendee for the candidate. |
| [**exchange_unverified_request_for_teaching_event_add_attendee**](TeachingEventsApi.md#exchange_unverified_request_for_teaching_event_add_attendee) | **POST** /api/teaching_events/attendees/exchange_unverified_request | Retrieves a pre-populated attendee for the candidate without requiring verification. |
| [**get_teaching_event**](TeachingEventsApi.md#get_teaching_event) | **GET** /api/teaching_events/{readable_id} | Retrieves a teaching event. |
| [**search_teaching_events**](TeachingEventsApi.md#search_teaching_events) | **GET** /api/teaching_events/search | Searches for teaching events. |
| [**upsert_teaching_event**](TeachingEventsApi.md#upsert_teaching_event) | **POST** /api/teaching_events | Adds or updates a teaching event. |


## add_teaching_event_attendee

> add_teaching_event_attendee(teaching_event_add_attendee)

Adds an attendee to a teaching event.

Adds an attendee to a teaching event. The event must have a `web_feed_id` to accept external attendees. 

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new
teaching_event_add_attendee = GetIntoTeachingApiClient::TeachingEventAddAttendee.new({event_id: '123e4567-e89b-12d3-a456-426614174000', email: 'johndoe@example.com', first_name: 'John', last_name: 'Doe', accepted_policy_id: '4872c8ed-0229-f111-8342-7c1e5285e3ab'}) # TeachingEventAddAttendee | Attendee details to add.

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
| **teaching_event_add_attendee** | [**TeachingEventAddAttendee**](TeachingEventAddAttendee.md) | Attendee details to add. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## exchange_access_token_for_teaching_event_add_attendee

> <TeachingEventAddAttendee> exchange_access_token_for_teaching_event_add_attendee(access_token, existing_candidate_request)

Retrieves a pre-populated attendee for the candidate.

Retrieves a pre-populated TeachingEventAddAttendee for the candidate. The access token is obtained from a `POST /api/candidates/access_tokens` request. 

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new
access_token = 'access_token_example' # String | The access token to exchange.
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'johndoe@example.com'}) # ExistingCandidateRequest | Candidate details to exchange.

begin
  # Retrieves a pre-populated attendee for the candidate.
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
  # Retrieves a pre-populated attendee for the candidate.
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
| **access_token** | **String** | The access token to exchange. |  |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate details to exchange. |  |

### Return type

[**TeachingEventAddAttendee**](TeachingEventAddAttendee.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## exchange_unverified_request_for_teaching_event_add_attendee

> <TeachingEventAddAttendee> exchange_unverified_request_for_teaching_event_add_attendee(existing_candidate_request)

Retrieves a pre-populated attendee for the candidate without requiring verification.

Retrieves a pre-populated attendee for the candidate. This mechanism should be used with caution and the candidate should be treated as \"unverified\" by the client. 

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'johndoe@example.com'}) # ExistingCandidateRequest | Candidate details to exchange.

begin
  # Retrieves a pre-populated attendee for the candidate without requiring verification.
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
  # Retrieves a pre-populated attendee for the candidate without requiring verification.
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
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate details to exchange. |  |

### Return type

[**TeachingEventAddAttendee**](TeachingEventAddAttendee.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_teaching_event

> <TeachingEvent> get_teaching_event(readable_id)

Retrieves a teaching event.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new
readable_id = 'readable_id_example' # String | The readable ID of the teaching event.

begin
  # Retrieves a teaching event.
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
  # Retrieves a teaching event.
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
| **readable_id** | **String** | The readable ID of the teaching event. |  |

### Return type

[**TeachingEvent**](TeachingEvent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_teaching_events

> <Array<TeachingEvent>> search_teaching_events(opts)

Searches for teaching events.

Searches for teaching events. Optionally limit the results by distance (in miles) from a postcode, event type, start date, and more. 

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new
opts = {
  postcode: 'postcode_example', # String | Postcode to center the search around.
  radius: 56, # Integer | Radius in miles to search around the postcode.
  type_ids: [37], # Array<Integer> | Filter by teaching event type IDs.
  online: true, # Boolean | Set to true for online events, false for in-person events.
  start_after: Time.parse('2025-07-01T00:00:00Z'), # Time | Filter to events starting after this date.
  start_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter to events starting before this date.
  status_ids: [37], # Array<Integer> | Filter by event status IDs.
  accessibility_options: [37], # Array<Integer> | Filter by accessibility option IDs.
  quantity: 56 # Integer | Maximum number of results to return.
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
| **postcode** | **String** | Postcode to center the search around. | [optional] |
| **radius** | **Integer** | Radius in miles to search around the postcode. | [optional] |
| **type_ids** | [**Array&lt;Integer&gt;**](Integer.md) | Filter by teaching event type IDs. | [optional] |
| **online** | **Boolean** | Set to true for online events, false for in-person events. | [optional] |
| **start_after** | **Time** | Filter to events starting after this date. | [optional] |
| **start_before** | **Time** | Filter to events starting before this date. | [optional] |
| **status_ids** | [**Array&lt;Integer&gt;**](Integer.md) | Filter by event status IDs. | [optional] |
| **accessibility_options** | [**Array&lt;Integer&gt;**](Integer.md) | Filter by accessibility option IDs. | [optional] |
| **quantity** | **Integer** | Maximum number of results to return. | [optional][default to 10] |

### Return type

[**Array&lt;TeachingEvent&gt;**](TeachingEvent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::TeachingEventsApi.new
teaching_event = GetIntoTeachingApiClient::TeachingEvent.new({type_id: 222750000, status_id: 222750001, readable_id: '12345', is_online: false, name: 'Get into Teaching - London', start_at: Time.parse('2026-07-15T10:00Z'), end_at: Time.parse('2026-07-15T16:00Z')}) # TeachingEvent | Teaching event to upsert.

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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

