# DependencyTracker::Project

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**version** | **String** |  | [optional] 
**purl** | **String** |  | [optional] 
**uuid** | **String** |  | 
**parent** | [**Project**](Project.md) |  | [optional] 
**children** | [**Array&lt;Project&gt;**](Project.md) |  | [optional] 
**properties** | [**Array&lt;ProjectProperty&gt;**](ProjectProperty.md) |  | [optional] 
**tags** | [**Array&lt;Tag&gt;**](Tag.md) |  | [optional] 
**last_bom_import** | **Integer** |  | [optional] 
**last_bom_import_format** | **String** |  | [optional] 
**last_inherited_risk_score** | **Float** |  | [optional] 
**active** | **Boolean** |  | [optional] 
**metrics** | [**ProjectMetrics**](ProjectMetrics.md) |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::Project.new(name: null,
                                 description: null,
                                 version: null,
                                 purl: null,
                                 uuid: null,
                                 parent: null,
                                 children: null,
                                 properties: null,
                                 tags: null,
                                 last_bom_import: null,
                                 last_bom_import_format: null,
                                 last_inherited_risk_score: null,
                                 active: null,
                                 metrics: null)
```


