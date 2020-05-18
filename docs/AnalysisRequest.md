# DependencyTracker::AnalysisRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project** | **String** |  | [optional] [readonly] 
**component** | **String** |  | [readonly] 
**vulnerability** | **String** |  | [readonly] 
**analysis_state** | **String** |  | [optional] [readonly] 
**comment** | **String** |  | [optional] [readonly] 
**suppressed** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::AnalysisRequest.new(project: null,
                                 component: null,
                                 vulnerability: null,
                                 analysis_state: null,
                                 comment: null,
                                 suppressed: null)
```


