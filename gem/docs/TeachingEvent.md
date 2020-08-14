# GetIntoTeachingApiClient::TeachingEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type_id** | **Integer** |  | [optional] 
**status_id** | **Integer** |  | [optional] 
**readable_id** | **String** |  | [optional] 
**web_feed_id** | **String** | If set, the API will accept new attendees for this event (an external sign up should be used if this value is nil). | [optional] 
**is_online** | **BOOLEAN** |  | [optional] 
**name** | **String** |  | [optional] 
**external_name** | **String** |  | [optional] 
**summary** | **String** |  | [optional] 
**message** | **String** | Used to push miscellaneous messages to users (if an event is close to being booked out, for example). | [optional] 
**description** | **String** |  | [optional] 
**video_url** | **String** |  | [optional] 
**provider_website_url** | **String** |  | [optional] 
**provider_target_audience** | **String** |  | [optional] 
**provider_organiser** | **String** |  | [optional] 
**provider_contact_email** | **String** |  | [optional] 
**start_at** | **DateTime** |  | [optional] 
**end_at** | **DateTime** |  | [optional] 
**building** | [**TeachingEventBuilding**](TeachingEventBuilding.md) |  | [optional] 
**id** | **String** |  | [optional] 


