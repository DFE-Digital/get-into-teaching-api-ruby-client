# GetIntoTeachingApiClient::TeachingEventSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**postcode** | **String** | Postcode to center search around. | [optional] 
**radius** | **Integer** | Set to filter results to a radius (in miles) around the postcode. | [optional] 
**type_id** | **Integer** | Set to filter results to a type of teaching event. Must match an &#x60;typeId&#x60; of the &#x60;TeachingEvent&#x60; schema. | [optional] 
**start_after** | **DateTime** | Set to filter results to those that start after a given date. | [optional] 
**start_before** | **DateTime** | Set to filter results to those that start before a given date. | [optional] 


