# GetIntoTeachingApiClient::MailingListApi

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_mailing_list_member**](MailingListApi.md#add_mailing_list_member) | **POST** /api/mailing_list/members | Adds a new member to the mailing list. |
| [**exchange_access_token_for_mailing_list_add_member**](MailingListApi.md#exchange_access_token_for_mailing_list_add_member) | **POST** /api/mailing_list/members/exchange_access_token/{accessToken} | Exchange an access token for a mailing list member sign-up. |
| [**exchange_magic_link_token_for_mailing_list_add_member**](MailingListApi.md#exchange_magic_link_token_for_mailing_list_add_member) | **GET** /api/mailing_list/members/exchange_magic_link_token/{magicLinkToken} | Exchange a magic link token for a mailing list member sign-up. |


## add_mailing_list_member

> <DegreeStatusResponse> add_mailing_list_member(mailing_list_add_member)

Adds a new member to the mailing list.

If the candidate_id is specified then the existing candidate will be added to the mailing list, otherwise a new candidate will be created. 

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::MailingListApi.new
mailing_list_add_member = GetIntoTeachingApiClient::MailingListAddMember.new({accepted_policy_id: '4872c8ed-0229-f111-8342-7c1e5285e3ab', consideration_journey_stage_id: 222750000, preferred_teaching_subject_id: 'b02655a1-2afa-e811-a981-000d3a276620', email: 'johndoe@example.com', first_name: 'John', last_name: 'Doe'}) # MailingListAddMember | Member to add to the mailing list.

begin
  # Adds a new member to the mailing list.
  result = api_instance.add_mailing_list_member(mailing_list_add_member)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling MailingListApi->add_mailing_list_member: #{e}"
end
```

#### Using the add_mailing_list_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DegreeStatusResponse>, Integer, Hash)> add_mailing_list_member_with_http_info(mailing_list_add_member)

```ruby
begin
  # Adds a new member to the mailing list.
  data, status_code, headers = api_instance.add_mailing_list_member_with_http_info(mailing_list_add_member)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DegreeStatusResponse>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling MailingListApi->add_mailing_list_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mailing_list_add_member** | [**MailingListAddMember**](MailingListAddMember.md) | Member to add to the mailing list. |  |

### Return type

[**DegreeStatusResponse**](DegreeStatusResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## exchange_access_token_for_mailing_list_add_member

> Object exchange_access_token_for_mailing_list_add_member(access_token, existing_candidate_request)

Exchange an access token for a mailing list member sign-up.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::MailingListApi.new
access_token = 'access_token_example' # String | The access token to exchange.
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'johndoe@example.com'}) # ExistingCandidateRequest | Candidate details to exchange.

begin
  # Exchange an access token for a mailing list member sign-up.
  result = api_instance.exchange_access_token_for_mailing_list_add_member(access_token, existing_candidate_request)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling MailingListApi->exchange_access_token_for_mailing_list_add_member: #{e}"
end
```

#### Using the exchange_access_token_for_mailing_list_add_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> exchange_access_token_for_mailing_list_add_member_with_http_info(access_token, existing_candidate_request)

```ruby
begin
  # Exchange an access token for a mailing list member sign-up.
  data, status_code, headers = api_instance.exchange_access_token_for_mailing_list_add_member_with_http_info(access_token, existing_candidate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling MailingListApi->exchange_access_token_for_mailing_list_add_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | The access token to exchange. |  |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate details to exchange. |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## exchange_magic_link_token_for_mailing_list_add_member

> <MailingListAddMember> exchange_magic_link_token_for_mailing_list_add_member(magic_link_token)

Exchange a magic link token for a mailing list member sign-up.

Retrieves a pre-populated MailingListAddMember for the candidate. The `magicLinkToken` is obtained from a `POST /api/candidates/magic_link_tokens` request. 

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'
# setup authorization
GetIntoTeachingApiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GetIntoTeachingApiClient::MailingListApi.new
magic_link_token = 'magic_link_token_example' # String | The magic link token to exchange.

begin
  # Exchange a magic link token for a mailing list member sign-up.
  result = api_instance.exchange_magic_link_token_for_mailing_list_add_member(magic_link_token)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling MailingListApi->exchange_magic_link_token_for_mailing_list_add_member: #{e}"
end
```

#### Using the exchange_magic_link_token_for_mailing_list_add_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MailingListAddMember>, Integer, Hash)> exchange_magic_link_token_for_mailing_list_add_member_with_http_info(magic_link_token)

```ruby
begin
  # Exchange a magic link token for a mailing list member sign-up.
  data, status_code, headers = api_instance.exchange_magic_link_token_for_mailing_list_add_member_with_http_info(magic_link_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MailingListAddMember>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling MailingListApi->exchange_magic_link_token_for_mailing_list_add_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **magic_link_token** | **String** | The magic link token to exchange. |  |

### Return type

[**MailingListAddMember**](MailingListAddMember.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

