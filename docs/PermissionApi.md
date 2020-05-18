# DependencyTracker::PermissionApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_permission_to_team**](PermissionApi.md#add_permission_to_team) | **POST** /v1/permission/{permission}/team/{uuid} | Adds the permission to the specified username.
[**add_permission_to_user**](PermissionApi.md#add_permission_to_user) | **POST** /v1/permission/{permission}/user/{username} | Adds the permission to the specified username.
[**get_all_permissions**](PermissionApi.md#get_all_permissions) | **GET** /v1/permission | Returns a list of all permissions
[**remove_permission_from_team**](PermissionApi.md#remove_permission_from_team) | **DELETE** /v1/permission/{permission}/team/{uuid} | Removes the permission from the team.
[**remove_permission_from_user**](PermissionApi.md#remove_permission_from_user) | **DELETE** /v1/permission/{permission}/user/{username} | Removes the permission from the user.



## add_permission_to_team

> Team add_permission_to_team(uuid, permission)

Adds the permission to the specified username.

Requires 'manage users' permission.

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

api_instance = DependencyTracker::PermissionApi.new
uuid = 'uuid_example' # String | A valid team uuid
permission = 'permission_example' # String | A valid permission

begin
  #Adds the permission to the specified username.
  result = api_instance.add_permission_to_team(uuid, permission)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling PermissionApi->add_permission_to_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| A valid team uuid | 
 **permission** | **String**| A valid permission | 

### Return type

[**Team**](Team.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## add_permission_to_user

> UserPrincipal add_permission_to_user(username, permission)

Adds the permission to the specified username.

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

api_instance = DependencyTracker::PermissionApi.new
username = 'username_example' # String | A valid username
permission = 'permission_example' # String | A valid permission

begin
  #Adds the permission to the specified username.
  result = api_instance.add_permission_to_user(username, permission)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling PermissionApi->add_permission_to_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| A valid username | 
 **permission** | **String**| A valid permission | 

### Return type

[**UserPrincipal**](UserPrincipal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_permissions

> Array&lt;Permission&gt; get_all_permissions

Returns a list of all permissions

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

api_instance = DependencyTracker::PermissionApi.new

begin
  #Returns a list of all permissions
  result = api_instance.get_all_permissions
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling PermissionApi->get_all_permissions: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Permission&gt;**](Permission.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_permission_from_team

> Team remove_permission_from_team(uuid, permission)

Removes the permission from the team.

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

api_instance = DependencyTracker::PermissionApi.new
uuid = 'uuid_example' # String | A valid team uuid
permission = 'permission_example' # String | A valid permission

begin
  #Removes the permission from the team.
  result = api_instance.remove_permission_from_team(uuid, permission)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling PermissionApi->remove_permission_from_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| A valid team uuid | 
 **permission** | **String**| A valid permission | 

### Return type

[**Team**](Team.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_permission_from_user

> UserPrincipal remove_permission_from_user(username, permission)

Removes the permission from the user.

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

api_instance = DependencyTracker::PermissionApi.new
username = 'username_example' # String | A valid username
permission = 'permission_example' # String | A valid permission

begin
  #Removes the permission from the user.
  result = api_instance.remove_permission_from_user(username, permission)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling PermissionApi->remove_permission_from_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| A valid username | 
 **permission** | **String**| A valid permission | 

### Return type

[**UserPrincipal**](UserPrincipal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

