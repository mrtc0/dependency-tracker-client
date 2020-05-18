# DependencyTracker::Team

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **String** |  | 
**name** | **String** |  | [optional] 
**api_keys** | [**Array&lt;ApiKey&gt;**](ApiKey.md) |  | [optional] 
**ldap_users** | [**Array&lt;LdapUser&gt;**](LdapUser.md) |  | [optional] 
**managed_users** | [**Array&lt;ManagedUser&gt;**](ManagedUser.md) |  | [optional] 
**mapped_ldap_groups** | [**Array&lt;MappedLdapGroup&gt;**](MappedLdapGroup.md) |  | [optional] 
**permissions** | [**Array&lt;Permission&gt;**](Permission.md) |  | [optional] 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::Team.new(uuid: null,
                                 name: null,
                                 api_keys: null,
                                 ldap_users: null,
                                 managed_users: null,
                                 mapped_ldap_groups: null,
                                 permissions: null)
```


