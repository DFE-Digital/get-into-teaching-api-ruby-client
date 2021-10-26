# GetIntoTeachingApiClient::TeachingEventSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**postcode** | **String** | Postcode to center search around. | [optional] 
**radius** | **Integer** | Set to filter results to a radius (in miles) around the postcode. | [optional] 
**type_ids** | **Array&lt;Integer&gt;** | Set to filter results to a type of teaching event. Each ID must match a &#x60;typeId&#x60; of the &#x60;TeachingEvent&#x60; schema. | [optional] 
**online** | **BOOLEAN** | Set to true to return only online events and false to return only in-person events. | [optional] 
**start_after** | **DateTime** | Set to filter results to those that start after a given date. | [optional] 
**start_before** | **DateTime** | Set to filter results to those that start before a given date. | [optional] 
**status_ids** | **Array&lt;Integer&gt;** | Set to filter results by event status. | [optional] 


