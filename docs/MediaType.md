# DependencyTracker::MediaType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] 
**subtype** | **String** |  | [optional] 
**parameters** | **Hash&lt;String, String&gt;** |  | [optional] 
**wildcard_type** | **Boolean** |  | [optional] 
**wildcard_subtype** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::MediaType.new(type: null,
                                 subtype: null,
                                 parameters: null,
                                 wildcard_type: null,
                                 wildcard_subtype: null)
```


