# GetIntoTeachingApiClient::MailingListApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_mailing_list_member**](MailingListApi.md#add_mailing_list_member) | **POST** /api/mailing_list/members | Adds a new member to the mailing list.


# **add_mailing_list_member**
> add_mailing_list_member(body)

Adds a new member to the mailing list.

If the `CandidateId` is specified then the existing candidate will be added to the mailing list, otherwise a new candidate will be created.

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

body = GetIntoTeachingApiClient::MailingListAddMemberRequest.new # MailingListAddMemberRequest | Member to add to the mailing list.


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
 **body** | [**MailingListAddMemberRequest**](MailingListAddMemberRequest.md)| Member to add to the mailing list. | 

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json



