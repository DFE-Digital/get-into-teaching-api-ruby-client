# GetIntoTeachingApiClient::TeachingEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**type_id** | **Integer** |  | [optional] 
**status_id** | **Integer** |  | [optional] 
**readable_id** | **String** |  | 
**web_feed_id** | **String** | If set, the API will accept new attendees for this event (an external sign up should be used if this value is nil). | [optional] 
**is_online** | **BOOLEAN** |  | [optional] 
**name** | **String** |  | 
**summary** | **String** |  | [optional] 
**message** | **String** | Used to push miscellaneous messages to users (if an event is close to being booked out, for example). | [optional] 
**description** | **String** |  | [optional] 
**video_url** | **String** |  | [optional] 
**scribble_id** | **String** |  | [optional] 
**provider_website_url** | **String** |  | [optional] 
**provider_target_audience** | **String** |  | [optional] 
**provider_organiser** | **String** |  | [optional] 
**provider_contact_email** | **String** |  | [optional] 
**start_at** | **DateTime** |  | [optional] 
**end_at** | **DateTime** |  | [optional] 
**providers_list** | **String** |  | [optional] 
**building** | [**TeachingEventBuilding**](TeachingEventBuilding.md) |  | [optional] 
**is_virtual** | **BOOLEAN** |  | [optional] 
**is_in_person** | **BOOLEAN** |  | [optional] 

