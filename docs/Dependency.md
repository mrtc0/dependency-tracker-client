# DependencyTracker::Dependency

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project** | [**Project**](Project.md) |  | 
**component** | [**Component**](Component.md) |  | 
**added_by** | **String** |  | [optional] 
**added_on** | **Integer** |  | 
**notes** | **String** |  | [optional] 
**metrics** | [**DependencyMetrics**](DependencyMetrics.md) |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::Dependency.new(project: null,
                                 component: null,
                                 added_by: null,
                                 added_on: null,
                                 notes: null,
                                 metrics: null)
```


