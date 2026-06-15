# GetIntoTeachingApiClient::MappingInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | The entity class name. | [optional] |
| **logical_name** | **String** | The Dynamics 365 logical name. | [optional] |
| **fields** | **Hash&lt;String, Hash&lt;String, String&gt;&gt;** | The field mappings between the API model and the CRM entity. | [optional] |
| **relationships** | **Hash&lt;String, Hash&lt;String, String&gt;&gt;** | The relationship mappings between the API model and the CRM entity. | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::MappingInfo.new(
  _class: Candidate,
  logical_name: contact,
  fields: {&quot;first_name&quot;:&quot;dfe_Firstname&quot;,&quot;last_name&quot;:&quot;dfe_Lastname&quot;,&quot;email&quot;:&quot;emailaddress1&quot;},
  relationships: {&quot;preferred_teaching_subject_id&quot;:&quot;dfe_PreferredTeachingSubjectId&quot;}
)
```

