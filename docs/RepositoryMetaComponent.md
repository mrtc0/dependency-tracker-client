# DependencyTracker::RepositoryMetaComponent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repository_type** | **String** |  | 
**namespace** | **String** |  | [optional] 
**name** | **String** |  | 
**latest_version** | **String** |  | 
**published** | **Integer** |  | [optional] 
**last_check** | **Integer** |  | 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::RepositoryMetaComponent.new(repository_type: null,
                                 namespace: null,
                                 name: null,
                                 latest_version: null,
                                 published: null,
                                 last_check: null)
```


