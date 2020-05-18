# DependencyTracker::UserApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_team_to_user**](UserApi.md#add_team_to_user) | **POST** /v1/user/{username}/membership | Adds the username to the specified team.
[**create_ldap_user**](UserApi.md#create_ldap_user) | **PUT** /v1/user/ldap | Creates a new user that references an existing LDAP object.
[**create_managed_user**](UserApi.md#create_managed_user) | **PUT** /v1/user/managed | Creates a new user.
[**delete_ldap_user**](UserApi.md#delete_ldap_user) | **DELETE** /v1/user/ldap | Deletes a user.
[**delete_managed_user**](UserApi.md#delete_managed_user) | **DELETE** /v1/user/managed | Deletes a user.
[**force_change_password**](UserApi.md#force_change_password) | **POST** /v1/user/forceChangePassword | Asserts login credentials and upon successful authentication, verifies passwords match and changes users password
[**get_ldap_users**](UserApi.md#get_ldap_users) | **GET** /v1/user/ldap | Returns a list of all LDAP users
[**get_managed_users**](UserApi.md#get_managed_users) | **GET** /v1/user/managed | Returns a list of all managed users
[**get_self**](UserApi.md#get_self) | **GET** /v1/user/self | Returns information about the current logged in user.
[**remove_team_from_user**](UserApi.md#remove_team_from_user) | **DELETE** /v1/user/{username}/membership | Removes the username from the specified team.
[**update_managed_user**](UserApi.md#update_managed_user) | **POST** /v1/user/managed | Updates a managed user.
[**update_self**](UserApi.md#update_self) | **POST** /v1/user/self | Updates information about the current logged in user.
[**validate_credentials**](UserApi.md#validate_credentials) | **POST** /v1/user/login | Assert login credentials



## add_team_to_user

> UserPrincipal add_team_to_user(username, body)

Adds the username to the specified team.

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

api_instance = DependencyTracker::UserApi.new
username = 'username_example' # String | A valid username
body = DependencyTracker::IdentifiableObject.new # IdentifiableObject | The UUID of the team to associate username with

begin
  #Adds the username to the specified team.
  result = api_instance.add_team_to_user(username, body)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling UserApi->add_team_to_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| A valid username | 
 **body** | [**IdentifiableObject**](IdentifiableObject.md)| The UUID of the team to associate username with | 

### Return type

[**UserPrincipal**](UserPrincipal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ldap_user

> LdapUser create_ldap_user(opts)

Creates a new user that references an existing LDAP object.

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

api_instance = DependencyTracker::UserApi.new
opts = {
  body: DependencyTracker::LdapUser.new # LdapUser | 
}

begin
  #Creates a new user that references an existing LDAP object.
  result = api_instance.create_ldap_user(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling UserApi->create_ldap_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LdapUser**](LdapUser.md)|  | [optional] 

### Return type

[**LdapUser**](LdapUser.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_managed_user

> ManagedUser create_managed_user(opts)

Creates a new user.

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

api_instance = DependencyTracker::UserApi.new
opts = {
  body: DependencyTracker::ManagedUser.new # ManagedUser | 
}

begin
  #Creates a new user.
  result = api_instance.create_managed_user(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling UserApi->create_managed_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ManagedUser**](ManagedUser.md)|  | [optional] 

### Return type

[**ManagedUser**](ManagedUser.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ldap_user

> delete_ldap_user(opts)

Deletes a user.

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

api_instance = DependencyTracker::UserApi.new
opts = {
  body: DependencyTracker::LdapUser.new # LdapUser | 
}

begin
  #Deletes a user.
  api_instance.delete_ldap_user(opts)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling UserApi->delete_ldap_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LdapUser**](LdapUser.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## delete_managed_user

> delete_managed_user(opts)

Deletes a user.

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

api_instance = DependencyTracker::UserApi.new
opts = {
  body: DependencyTracker::ManagedUser.new # ManagedUser | 
}

begin
  #Deletes a user.
  api_instance.delete_managed_user(opts)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling UserApi->delete_managed_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ManagedUser**](ManagedUser.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## force_change_password

> String force_change_password(opts)

Asserts login credentials and upon successful authentication, verifies passwords match and changes users password

Upon a successful login, a JSON Web Token will be returned in the response body. This functionality requires authentication to be enabled.

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

api_instance = DependencyTracker::UserApi.new
opts = {
  username: 'username_example', # String | 
  password: 'password_example', # String | 
  new_password: 'new_password_example', # String | 
  confirm_password: 'confirm_password_example' # String | 
}

begin
  #Asserts login credentials and upon successful authentication, verifies passwords match and changes users password
  result = api_instance.force_change_password(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling UserApi->force_change_password: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | [optional] 
 **password** | **String**|  | [optional] 
 **new_password** | **String**|  | [optional] 
 **confirm_password** | **String**|  | [optional] 

### Return type

**String**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/plain


## get_ldap_users

> Array&lt;LdapUser&gt; get_ldap_users

Returns a list of all LDAP users

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

api_instance = DependencyTracker::UserApi.new

begin
  #Returns a list of all LDAP users
  result = api_instance.get_ldap_users
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling UserApi->get_ldap_users: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;LdapUser&gt;**](LdapUser.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_managed_users

> Array&lt;ManagedUser&gt; get_managed_users

Returns a list of all managed users

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

api_instance = DependencyTracker::UserApi.new

begin
  #Returns a list of all managed users
  result = api_instance.get_managed_users
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling UserApi->get_managed_users: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ManagedUser&gt;**](ManagedUser.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_self

> UserPrincipal get_self

Returns information about the current logged in user.

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

api_instance = DependencyTracker::UserApi.new

begin
  #Returns information about the current logged in user.
  result = api_instance.get_self
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling UserApi->get_self: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserPrincipal**](UserPrincipal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_team_from_user

> UserPrincipal remove_team_from_user(username, body)

Removes the username from the specified team.

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

api_instance = DependencyTracker::UserApi.new
username = 'username_example' # String | A valid username
body = DependencyTracker::IdentifiableObject.new # IdentifiableObject | The UUID of the team to un-associate username from

begin
  #Removes the username from the specified team.
  result = api_instance.remove_team_from_user(username, body)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling UserApi->remove_team_from_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| A valid username | 
 **body** | [**IdentifiableObject**](IdentifiableObject.md)| The UUID of the team to un-associate username from | 

### Return type

[**UserPrincipal**](UserPrincipal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_managed_user

> ManagedUser update_managed_user(opts)

Updates a managed user.

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

api_instance = DependencyTracker::UserApi.new
opts = {
  body: DependencyTracker::ManagedUser.new # ManagedUser | 
}

begin
  #Updates a managed user.
  result = api_instance.update_managed_user(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling UserApi->update_managed_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ManagedUser**](ManagedUser.md)|  | [optional] 

### Return type

[**ManagedUser**](ManagedUser.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_self

> UserPrincipal update_self(opts)

Updates information about the current logged in user.

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

api_instance = DependencyTracker::UserApi.new
opts = {
  body: DependencyTracker::ManagedUser.new # ManagedUser | 
}

begin
  #Updates information about the current logged in user.
  result = api_instance.update_self(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling UserApi->update_self: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ManagedUser**](ManagedUser.md)|  | [optional] 

### Return type

[**UserPrincipal**](UserPrincipal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## validate_credentials

> String validate_credentials(opts)

Assert login credentials

Upon a successful login, a JSON Web Token will be returned in the response body. This functionality requires authentication to be enabled.

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

api_instance = DependencyTracker::UserApi.new
opts = {
  username: 'username_example', # String | 
  password: 'password_example' # String | 
}

begin
  #Assert login credentials
  result = api_instance.validate_credentials(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling UserApi->validate_credentials: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | [optional] 
 **password** | **String**|  | [optional] 

### Return type

**String**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: text/plain

