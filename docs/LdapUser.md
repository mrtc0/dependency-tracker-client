# DependencyTracker::LdapUser

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **String** |  | [optional] 
**dn** | **String** |  | [optional] 
**teams** | [**Array&lt;Team&gt;**](Team.md) |  | [optional] 
**email** | **String** |  | [optional] 
**permissions** | [**Array&lt;Permission&gt;**](Permission.md) |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::LdapUser.new(username: null,
                                 dn: null,
                                 teams: null,
                                 email: null,
                                 permissions: null)
```


