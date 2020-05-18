# DependencyTracker::ManagedUser

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **String** |  | [optional] 
**new_password** | **String** |  | [optional] 
**confirm_password** | **String** |  | [optional] 
**last_password_change** | **Integer** |  | 
**fullname** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**suspended** | **Boolean** |  | [optional] 
**force_password_change** | **Boolean** |  | [optional] 
**non_expiry_password** | **Boolean** |  | [optional] 
**teams** | [**Array&lt;Team&gt;**](Team.md) |  | [optional] 
**permissions** | [**Array&lt;Permission&gt;**](Permission.md) |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::ManagedUser.new(username: null,
                                 new_password: null,
                                 confirm_password: null,
                                 last_password_change: null,
                                 fullname: null,
                                 email: null,
                                 suspended: null,
                                 force_password_change: null,
                                 non_expiry_password: null,
                                 teams: null,
                                 permissions: null)
```


