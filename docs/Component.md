# DependencyTracker::Component

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**version** | **String** |  | [optional] 
**classifier** | **String** |  | [optional] 
**filename** | **String** |  | [optional] 
**extension** | **String** |  | [optional] 
**md5** | **String** |  | [optional] 
**sha1** | **String** |  | [optional] 
**sha256** | **String** |  | [optional] 
**sha512** | **String** |  | [optional] 
**sha3_256** | **String** |  | [optional] 
**sha3_512** | **String** |  | [optional] 
**cpe** | **String** |  | [optional] 
**purl** | [**PackageURL**](PackageURL.md) |  | [optional] 
**description** | **String** |  | [optional] 
**copyright** | **String** |  | [optional] 
**license** | **String** |  | [optional] 
**resolved_license** | [**License**](License.md) |  | [optional] 
**parent** | [**Component**](Component.md) |  | [optional] 
**children** | [**Array&lt;Component&gt;**](Component.md) |  | [optional] 
**vulnerabilities** | [**Array&lt;Vulnerability&gt;**](Vulnerability.md) |  | [optional] 
**last_inherited_risk_score** | **Float** |  | [optional] 
**uuid** | **String** |  | 
**metrics** | [**ComponentMetrics**](ComponentMetrics.md) |  | [optional] 
**repository_meta** | [**RepositoryMetaComponent**](RepositoryMetaComponent.md) |  | [optional] 
**used_by** | **Integer** |  | [optional] 
**is_internal** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::Component.new(group: null,
                                 name: null,
                                 version: null,
                                 classifier: null,
                                 filename: null,
                                 extension: null,
                                 md5: null,
                                 sha1: null,
                                 sha256: null,
                                 sha512: null,
                                 sha3_256: null,
                                 sha3_512: null,
                                 cpe: null,
                                 purl: null,
                                 description: null,
                                 copyright: null,
                                 license: null,
                                 resolved_license: null,
                                 parent: null,
                                 children: null,
                                 vulnerabilities: null,
                                 last_inherited_risk_score: null,
                                 uuid: null,
                                 metrics: null,
                                 repository_meta: null,
                                 used_by: null,
                                 is_internal: null)
```


