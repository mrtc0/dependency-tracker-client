# DependencyTracker::DependencyRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_uuid** | **String** |  | [readonly] 
**component_uuids** | **Array&lt;String&gt;** |  | [readonly] 
**notes** | **String** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::DependencyRequest.new(project_uuid: null,
                                 component_uuids: null,
                                 notes: null)
```


