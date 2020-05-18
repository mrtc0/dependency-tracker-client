# DependencyTracker::Finding

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component** | **Hash&lt;String, Object&gt;** |  | [optional] 
**vulnerability** | **Hash&lt;String, Object&gt;** |  | [optional] 
**analysis** | **Hash&lt;String, Object&gt;** |  | [optional] 
**matrix** | **String** |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::Finding.new(component: null,
                                 vulnerability: null,
                                 analysis: null,
                                 matrix: null)
```


