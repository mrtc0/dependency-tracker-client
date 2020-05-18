# DependencyTracker::ComponentMetrics

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component** | [**Component**](Component.md) |  | 
**critical** | **Integer** |  | [optional] 
**high** | **Integer** |  | [optional] 
**medium** | **Integer** |  | [optional] 
**low** | **Integer** |  | [optional] 
**unassigned** | **Integer** |  | [optional] 
**vulnerabilities** | **Integer** |  | [optional] 
**suppressed** | **Integer** |  | [optional] 
**findings_total** | **Integer** |  | [optional] 
**findings_audited** | **Integer** |  | [optional] 
**findings_unaudited** | **Integer** |  | [optional] 
**inherited_risk_score** | **Float** |  | [optional] 
**first_occurrence** | **Integer** |  | 
**last_occurrence** | **Integer** |  | 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::ComponentMetrics.new(component: null,
                                 critical: null,
                                 high: null,
                                 medium: null,
                                 low: null,
                                 unassigned: null,
                                 vulnerabilities: null,
                                 suppressed: null,
                                 findings_total: null,
                                 findings_audited: null,
                                 findings_unaudited: null,
                                 inherited_risk_score: null,
                                 first_occurrence: null,
                                 last_occurrence: null)
```


