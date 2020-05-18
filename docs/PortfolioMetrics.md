# DependencyTracker::PortfolioMetrics

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**critical** | **Integer** |  | [optional] 
**high** | **Integer** |  | [optional] 
**medium** | **Integer** |  | [optional] 
**low** | **Integer** |  | [optional] 
**unassigned** | **Integer** |  | [optional] 
**vulnerabilities** | **Integer** |  | [optional] 
**projects** | **Integer** |  | [optional] 
**vulnerable_projects** | **Integer** |  | [optional] 
**components** | **Integer** |  | [optional] 
**vulnerable_components** | **Integer** |  | [optional] 
**dependencies** | **Integer** |  | [optional] 
**vulnerable_dependencies** | **Integer** |  | [optional] 
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

instance = DependencyTracker::PortfolioMetrics.new(critical: null,
                                 high: null,
                                 medium: null,
                                 low: null,
                                 unassigned: null,
                                 vulnerabilities: null,
                                 projects: null,
                                 vulnerable_projects: null,
                                 components: null,
                                 vulnerable_components: null,
                                 dependencies: null,
                                 vulnerable_dependencies: null,
                                 suppressed: null,
                                 findings_total: null,
                                 findings_audited: null,
                                 findings_unaudited: null,
                                 inherited_risk_score: null,
                                 first_occurrence: null,
                                 last_occurrence: null)
```


