# DependencyTracker::UserPrincipal

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permissions** | [**Array&lt;Permission&gt;**](Permission.md) |  | [optional] 
**teams** | [**Array&lt;Team&gt;**](Team.md) |  | [optional] 
**username** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**id** | **Integer** |  | [optional] 
**name** | **String** |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::UserPrincipal.new(permissions: null,
                                 teams: null,
                                 username: null,
                                 email: null,
                                 id: null,
                                 name: null)
```


