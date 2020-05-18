# DependencyTracker::MultiPart

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content_disposition** | [**ContentDisposition**](ContentDisposition.md) |  | [optional] 
**entity** | [**Object**](.md) |  | [optional] 
**headers** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] 
**media_type** | [**MediaType**](MediaType.md) |  | [optional] 
**message_body_workers** | [**Object**](.md) |  | [optional] 
**parent** | [**MultiPart**](MultiPart.md) |  | [optional] 
**providers** | [**Object**](.md) |  | [optional] 
**body_parts** | [**Array&lt;BodyPart&gt;**](BodyPart.md) |  | [optional] 
**parameterized_headers** | **Hash&lt;String, Array&lt;ParameterizedHeader&gt;&gt;** |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::MultiPart.new(content_disposition: null,
                                 entity: null,
                                 headers: null,
                                 media_type: null,
                                 message_body_workers: null,
                                 parent: null,
                                 providers: null,
                                 body_parts: null,
                                 parameterized_headers: null)
```


