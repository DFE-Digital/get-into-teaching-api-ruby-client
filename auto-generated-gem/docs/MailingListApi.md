# GetIntoTeachingApiClient::MailingListApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_mailing_list_member**](MailingListApi.md#add_mailing_list_member) | **POST** /api/mailing_list/members | Adds a new member to the mailing list. |
| [**exchange_access_token_for_mailing_list_add_member**](MailingListApi.md#exchange_access_token_for_mailing_list_add_member) | **POST** /api/mailing_list/members/exchange_access_token/{accessToken} | Retrieves a pre-populated MailingListAddMember for the candidate. |
| [**exchange_magic_link_token_for_mailing_list_add_member**](MailingListApi.md#exchange_magic_link_token_for_mailing_list_add_member) | **GET** /api/mailing_list/members/exchange_magic_link_token/{magicLinkToken} | Retrieves a pre-populated MailingListAddMember for the candidate. |


## add_mailing_list_member

> add_mailing_list_member(mailing_list_add_member)

Adds a new member to the mailing list.

                 If the `CandidateId` is specified then the existing candidate will be                  added to the mailing list, otherwise a new candidate will be created.

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

api_instance = GetIntoTeachingApiClient::MailingListApi.new
mailing_list_add_member = GetIntoTeachingApiClient::MailingListAddMember.new({preferred_teaching_subject_id: 'preferred_teaching_subject_id_example', accepted_policy_id: 'accepted_policy_id_example', consideration_journey_stage_id: 37, email: 'email_example', first_name: 'first_name_example', last_name: 'last_name_example'}) # MailingListAddMember | Member to add to the mailing list.

begin
  # Adds a new member to the mailing list.
  api_instance.add_mailing_list_member(mailing_list_add_member)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling MailingListApi->add_mailing_list_member: #{e}"
end
```

#### Using the add_mailing_list_member_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_mailing_list_member_with_http_info(mailing_list_add_member)

```ruby
begin
  # Adds a new member to the mailing list.
  data, status_code, headers = api_instance.add_mailing_list_member_with_http_info(mailing_list_add_member)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling MailingListApi->add_mailing_list_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mailing_list_add_member** | [**MailingListAddMember**](MailingListAddMember.md) | Member to add to the mailing list. |  |

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## exchange_access_token_for_mailing_list_add_member

> <MailingListAddMember> exchange_access_token_for_mailing_list_add_member(access_token, existing_candidate_request)

Retrieves a pre-populated MailingListAddMember for the candidate.

                 Retrieves a pre-populated MailingListAddMember for the candidate. The `accessToken` is obtained from a                  `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                  exchanged for your token matches the request payload here).

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

api_instance = GetIntoTeachingApiClient::MailingListApi.new
access_token = 'access_token_example' # String | Access token (PIN code).
existing_candidate_request = GetIntoTeachingApiClient::ExistingCandidateRequest.new({email: 'email_example'}) # ExistingCandidateRequest | Candidate access token request (must match an existing candidate).

begin
  # Retrieves a pre-populated MailingListAddMember for the candidate.
  result = api_instance.exchange_access_token_for_mailing_list_add_member(access_token, existing_candidate_request)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling MailingListApi->exchange_access_token_for_mailing_list_add_member: #{e}"
end
```

#### Using the exchange_access_token_for_mailing_list_add_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MailingListAddMember>, Integer, Hash)> exchange_access_token_for_mailing_list_add_member_with_http_info(access_token, existing_candidate_request)

```ruby
begin
  # Retrieves a pre-populated MailingListAddMember for the candidate.
  data, status_code, headers = api_instance.exchange_access_token_for_mailing_list_add_member_with_http_info(access_token, existing_candidate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MailingListAddMember>
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Error when calling MailingListApi->exchange_access_token_for_mailing_list_add_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | Access token (PIN code). |  |
| **existing_candidate_request** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md) | Candidate access token request (must match an existing candidate). |  |

### Return type

[**MailingListAddMember**](MailingListAddMember.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## exchange_magic_link_token_for_mailing_list_add_member

> <MailingListAddMember> exchange_magic_link_token_for_mailing_list_add_member(magic_link_token)

Retrieves a pre-populated MailingListAddMember for the candidate.

                 Retrieves a pre-populated MailingListAddMember for the candidate. The `magicLinkToken` is obtained from a                  `POST /candidates/magic_link_tokens` request.

### Examples

```ruby
require 'time'
require 'get_into_teaching_api_client'

api_instance = GetIntoTeachingApiClient::MailingListApi.new
magic_link_token = 'magic_link_token_example' # String | Magic link token.

begin
  # Retrieves a pre-populated MailingListAddMember for the candidate.
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
  # Retrieves a pre-populated MailingListAddMember for the candidate.
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
| **magic_link_token** | **String** | Magic link token. |  |

### Return type

[**MailingListAddMember**](MailingListAddMember.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

