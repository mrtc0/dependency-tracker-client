# DependencyTracker::LdapApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_mapping**](LdapApi.md#add_mapping) | **PUT** /v1/ldap/mapping | Adds a mapping
[**delete_mapping**](LdapApi.md#delete_mapping) | **DELETE** /v1/ldap/mapping/{uuid} | Removes a mapping
[**retrieve_ldap_groups**](LdapApi.md#retrieve_ldap_groups) | **GET** /v1/ldap/groups | Returns the DNs of all accessible groups within the directory
[**retrieve_ldap_groups1**](LdapApi.md#retrieve_ldap_groups1) | **GET** /v1/ldap/team/{uuid} | Returns the DNs of all groups mapped to the specified team



## add_mapping

> MappedLdapGroup add_mapping(opts)

Adds a mapping

### Example

```ruby
# load the gem
require 'dependency-tracker-client'
# setup authorization
DependencyTracker.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'
end

api_instance = DependencyTracker::LdapApi.new
opts = {
  body: DependencyTracker::MappedLdapGroupRequest.new # MappedLdapGroupRequest | 
}

begin
  #Adds a mapping
  result = api_instance.add_mapping(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling LdapApi->add_mapping: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MappedLdapGroupRequest**](MappedLdapGroupRequest.md)|  | [optional] 

### Return type

[**MappedLdapGroup**](MappedLdapGroup.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_mapping

> MappedLdapGroup delete_mapping(uuid)

Removes a mapping

### Example

```ruby
# load the gem
require 'dependency-tracker-client'
# setup authorization
DependencyTracker.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'
end

api_instance = DependencyTracker::LdapApi.new
uuid = 'uuid_example' # String | The UUID of the mapping to delete

begin
  #Removes a mapping
  result = api_instance.delete_mapping(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling LdapApi->delete_mapping: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the mapping to delete | 

### Return type

[**MappedLdapGroup**](MappedLdapGroup.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_ldap_groups

> Array&lt;String&gt; retrieve_ldap_groups

Returns the DNs of all accessible groups within the directory

This API performs a pass-thru query to the configured LDAP server. Search criteria results are cached using default Alpine CacheManager policy

### Example

```ruby
# load the gem
require 'dependency-tracker-client'
# setup authorization
DependencyTracker.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'
end

api_instance = DependencyTracker::LdapApi.new

begin
  #Returns the DNs of all accessible groups within the directory
  result = api_instance.retrieve_ldap_groups
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling LdapApi->retrieve_ldap_groups: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_ldap_groups1

> Array&lt;String&gt; retrieve_ldap_groups1(uuid)

Returns the DNs of all groups mapped to the specified team

### Example

```ruby
# load the gem
require 'dependency-tracker-client'
# setup authorization
DependencyTracker.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-Api-Key'] = 'Bearer'
end

api_instance = DependencyTracker::LdapApi.new
uuid = 'uuid_example' # String | The UUID of the team to retrieve mappings for

begin
  #Returns the DNs of all groups mapped to the specified team
  result = api_instance.retrieve_ldap_groups1(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling LdapApi->retrieve_ldap_groups1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the team to retrieve mappings for | 

### Return type

**Array&lt;String&gt;**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

