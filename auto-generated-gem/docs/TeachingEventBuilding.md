# GetIntoTeachingApiClient::TeachingEventBuilding

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **venue** | **String** |  |  |
| **address_line1** | **String** |  | [optional] |
| **address_line2** | **String** |  | [optional] |
| **address_line3** | **String** |  | [optional] |
| **address_city** | **String** |  | [optional] |
| **address_postcode** | **String** |  | [optional] |
| **image_url** | **String** |  | [optional] |

## Example

```ruby
require 'get_into_teaching_api_client'

instance = GetIntoTeachingApiClient::TeachingEventBuilding.new(
  id: 3290fb7f-93b4-eb11-8236-000d3a26ba1b,
  venue: The Open University in Wales,
  address_line1: Custom House Street,
  address_line2: null,
  address_line3: null,
  address_city: Cardiff,
  address_postcode: CF10 1AP,
  image_url: null
)
```

