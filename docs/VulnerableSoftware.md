# DependencyTracker::VulnerableSoftware

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purl** | **String** |  | [optional] 
**purl_type** | **String** |  | [optional] 
**purl_namespace** | **String** |  | [optional] 
**purl_name** | **String** |  | [optional] 
**purl_version** | **String** |  | [optional] 
**purl_qualifiers** | **String** |  | [optional] 
**purl_subpath** | **String** |  | [optional] 
**cpe22** | **String** |  | [optional] 
**cpe23** | **String** |  | [optional] 
**part** | **String** |  | [optional] 
**vendor** | **String** |  | [optional] 
**product** | **String** |  | [optional] 
**version** | **String** |  | [optional] 
**update** | **String** |  | [optional] 
**edition** | **String** |  | [optional] 
**language** | **String** |  | [optional] 
**sw_edition** | **String** |  | [optional] 
**target_sw** | **String** |  | [optional] 
**target_hw** | **String** |  | [optional] 
**other** | **String** |  | [optional] 
**version_end_excluding** | **String** |  | [optional] 
**version_end_including** | **String** |  | [optional] 
**version_start_excluding** | **String** |  | [optional] 
**version_start_including** | **String** |  | [optional] 
**vulnerabilities** | [**Array&lt;Vulnerability&gt;**](Vulnerability.md) |  | [optional] 
**uuid** | **String** |  | [optional] 
**is_vulnerable** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::VulnerableSoftware.new(purl: null,
                                 purl_type: null,
                                 purl_namespace: null,
                                 purl_name: null,
                                 purl_version: null,
                                 purl_qualifiers: null,
                                 purl_subpath: null,
                                 cpe22: null,
                                 cpe23: null,
                                 part: null,
                                 vendor: null,
                                 product: null,
                                 version: null,
                                 update: null,
                                 edition: null,
                                 language: null,
                                 sw_edition: null,
                                 target_sw: null,
                                 target_hw: null,
                                 other: null,
                                 version_end_excluding: null,
                                 version_end_including: null,
                                 version_start_excluding: null,
                                 version_start_including: null,
                                 vulnerabilities: null,
                                 uuid: null,
                                 is_vulnerable: null)
```


