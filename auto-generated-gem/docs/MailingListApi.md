# GetIntoTeachingApiClient::MailingListApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_mailing_list_member**](MailingListApi.md#add_mailing_list_member) | **POST** /api/mailing_list/members | Adds a new member to the mailing list.
[**exchange_access_token_for_mailing_list_add_member**](MailingListApi.md#exchange_access_token_for_mailing_list_add_member) | **POST** /api/mailing_list/members/exchange_access_token/{accessToken} | Retrieves a pre-populated MailingListAddMember for the candidate.
[**exchange_magic_link_token_for_mailing_list_add_member**](MailingListApi.md#exchange_magic_link_token_for_mailing_list_add_member) | **GET** /api/mailing_list/members/exchange_magic_link_token/{magicLinkToken} | Retrieves a pre-populated MailingListAddMember for the candidate.


# **add_mailing_list_member**
> add_mailing_list_member(body)

Adds a new member to the mailing list.

                 If the `CandidateId` is specified then the existing candidate will be                  added to the mailing list, otherwise a new candidate will be created.

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

api_instance = GetIntoTeachingApiClient::MailingListApi.new

body = GetIntoTeachingApiClient::MailingListAddMember.new # MailingListAddMember | Member to add to the mailing list.


begin
  #Adds a new member to the mailing list.
  api_instance.add_mailing_list_member(body)
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling MailingListApi->add_mailing_list_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MailingListAddMember**](MailingListAddMember.md)| Member to add to the mailing list. | 

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **exchange_access_token_for_mailing_list_add_member**
> MailingListAddMember exchange_access_token_for_mailing_list_add_member(access_token, body)

Retrieves a pre-populated MailingListAddMember for the candidate.

                 Retrieves a pre-populated MailingListAddMember for the candidate. The `accessToken` is obtained from a                  `POST /candidates/access_tokens` request (you must also ensure the `ExistingCandidateRequest` payload you                  exchanged for your token matches the request payload here).

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

api_instance = GetIntoTeachingApiClient::MailingListApi.new

access_token = 'access_token_example' # String | Access token (PIN code).

body = GetIntoTeachingApiClient::ExistingCandidateRequest.new # ExistingCandidateRequest | Candidate access token request (must match an existing candidate).


begin
  #Retrieves a pre-populated MailingListAddMember for the candidate.
  result = api_instance.exchange_access_token_for_mailing_list_add_member(access_token, body)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling MailingListApi->exchange_access_token_for_mailing_list_add_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| Access token (PIN code). | 
 **body** | [**ExistingCandidateRequest**](ExistingCandidateRequest.md)| Candidate access token request (must match an existing candidate). | 

### Return type

[**MailingListAddMember**](MailingListAddMember.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



# **exchange_magic_link_token_for_mailing_list_add_member**
> MailingListAddMember exchange_magic_link_token_for_mailing_list_add_member(magic_link_token)

Retrieves a pre-populated MailingListAddMember for the candidate.

                 Retrieves a pre-populated MailingListAddMember for the candidate. The `magicLinkToken` is obtained from a                  `POST /candidates/magic_link_tokens` request.

### Example
```ruby
# load the gem
require 'get_into_teaching_api_client'

api_instance = GetIntoTeachingApiClient::MailingListApi.new

magic_link_token = 'magic_link_token_example' # String | Magic link token.


begin
  #Retrieves a pre-populated MailingListAddMember for the candidate.
  result = api_instance.exchange_magic_link_token_for_mailing_list_add_member(magic_link_token)
  p result
rescue GetIntoTeachingApiClient::ApiError => e
  puts "Exception when calling MailingListApi->exchange_magic_link_token_for_mailing_list_add_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **magic_link_token** | **String**| Magic link token. | 

### Return type

[**MailingListAddMember**](MailingListAddMember.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json



