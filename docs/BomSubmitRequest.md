# DependencyTracker::BomSubmitRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project** | **String** |  | [readonly] 
**project_name** | **String** |  | [optional] [readonly] 
**project_version** | **String** |  | [optional] [readonly] 
**auto_create** | **Boolean** |  | [optional] [readonly] 
**bom** | **String** |  | [readonly] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::BomSubmitRequest.new(project: null,
                                 project_name: null,
                                 project_version: null,
                                 auto_create: null,
                                 bom: null)
```


