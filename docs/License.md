# DependencyTracker::License

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **String** |  | 
**name** | **String** |  | [optional] 
**license_text** | **String** |  | [optional] 
**standard_license_template** | **String** |  | [optional] 
**standard_license_header** | **String** |  | [optional] 
**license_comments** | **String** |  | [optional] 
**license_id** | **String** |  | [optional] 
**is_osi_approved** | **Boolean** |  | [optional] 
**is_fsf_libre** | **Boolean** |  | [optional] 
**is_deprecated_license_id** | **Boolean** |  | [optional] 
**see_also** | **Array&lt;String&gt;** |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::License.new(uuid: null,
                                 name: null,
                                 license_text: null,
                                 standard_license_template: null,
                                 standard_license_header: null,
                                 license_comments: null,
                                 license_id: null,
                                 is_osi_approved: null,
                                 is_fsf_libre: null,
                                 is_deprecated_license_id: null,
                                 see_also: null)
```


