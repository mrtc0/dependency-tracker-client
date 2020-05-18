# DependencyTracker::Score

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_score** | **Float** |  | [optional] 
**impact_sub_score** | **Float** |  | [optional] 
**exploitability_sub_score** | **Float** |  | [optional] 
**temporal_score** | **Float** |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::Score.new(base_score: null,
                                 impact_sub_score: null,
                                 exploitability_sub_score: null,
                                 temporal_score: null)
```


