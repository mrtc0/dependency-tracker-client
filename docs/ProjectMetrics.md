# DependencyTracker::ProjectMetrics

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project** | [**Project**](Project.md) |  | 
**critical** | **Integer** |  | [optional] 
**high** | **Integer** |  | [optional] 
**medium** | **Integer** |  | [optional] 
**low** | **Integer** |  | [optional] 
**unassigned** | **Integer** |  | [optional] 
**vulnerabilities** | **Integer** |  | [optional] 
**vulnerable_components** | **Integer** |  | [optional] 
**components** | **Integer** |  | [optional] 
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

instance = DependencyTracker::ProjectMetrics.new(project: null,
                                 critical: null,
                                 high: null,
                                 medium: null,
                                 low: null,
                                 unassigned: null,
                                 vulnerabilities: null,
                                 vulnerable_components: null,
                                 components: null,
                                 suppressed: null,
                                 findings_total: null,
                                 findings_audited: null,
                                 findings_unaudited: null,
                                 inherited_risk_score: null,
                                 first_occurrence: null,
                                 last_occurrence: null)
```


