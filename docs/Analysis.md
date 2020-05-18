# DependencyTracker::Analysis

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**analysis_state** | **String** |  | 
**analysis_comments** | [**Array&lt;AnalysisComment&gt;**](AnalysisComment.md) |  | [optional] 
**is_suppressed** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::Analysis.new(analysis_state: null,
                                 analysis_comments: null,
                                 is_suppressed: null)
```


