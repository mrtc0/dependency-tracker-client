# DependencyTracker::RepositoryApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_repository**](RepositoryApi.md#create_repository) | **PUT** /v1/repository | Creates a new repository
[**delete_repository**](RepositoryApi.md#delete_repository) | **DELETE** /v1/repository/{uuid} | Deletes a repository
[**get_repositories**](RepositoryApi.md#get_repositories) | **GET** /v1/repository | Returns a list of all repositories
[**get_repositories_by_type**](RepositoryApi.md#get_repositories_by_type) | **GET** /v1/repository/{type} | Returns repositories that support the specific type
[**get_repository_meta_component**](RepositoryApi.md#get_repository_meta_component) | **GET** /v1/repository/latest | Attempts to resolve the latest version of the component available in the configured repositories
[**update_repository**](RepositoryApi.md#update_repository) | **POST** /v1/repository | Updates a repository



## create_repository

> Repository create_repository(opts)

Creates a new repository

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

api_instance = DependencyTracker::RepositoryApi.new
opts = {
  body: DependencyTracker::Repository.new # Repository | 
}

begin
  #Creates a new repository
  result = api_instance.create_repository(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling RepositoryApi->create_repository: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Repository**](Repository.md)|  | [optional] 

### Return type

[**Repository**](Repository.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_repository

> delete_repository(uuid)

Deletes a repository

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

api_instance = DependencyTracker::RepositoryApi.new
uuid = 'uuid_example' # String | The UUID of the repository to delete

begin
  #Deletes a repository
  api_instance.delete_repository(uuid)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling RepositoryApi->delete_repository: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the repository to delete | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_repositories

> Array&lt;Repository&gt; get_repositories

Returns a list of all repositories

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

api_instance = DependencyTracker::RepositoryApi.new

begin
  #Returns a list of all repositories
  result = api_instance.get_repositories
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling RepositoryApi->get_repositories: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Repository&gt;**](Repository.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repositories_by_type

> Array&lt;Repository&gt; get_repositories_by_type(type)

Returns repositories that support the specific type

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

api_instance = DependencyTracker::RepositoryApi.new
type = 'type_example' # String | The type of repositories to retrieve

begin
  #Returns repositories that support the specific type
  result = api_instance.get_repositories_by_type(type)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling RepositoryApi->get_repositories_by_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The type of repositories to retrieve | 

### Return type

[**Array&lt;Repository&gt;**](Repository.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository_meta_component

> RepositoryMetaComponent get_repository_meta_component(purl)

Attempts to resolve the latest version of the component available in the configured repositories

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

api_instance = DependencyTracker::RepositoryApi.new
purl = 'purl_example' # String | The Package URL for the component to query

begin
  #Attempts to resolve the latest version of the component available in the configured repositories
  result = api_instance.get_repository_meta_component(purl)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling RepositoryApi->get_repository_meta_component: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purl** | **String**| The Package URL for the component to query | 

### Return type

[**RepositoryMetaComponent**](RepositoryMetaComponent.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_repository

> Repository update_repository(opts)

Updates a repository

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

api_instance = DependencyTracker::RepositoryApi.new
opts = {
  body: DependencyTracker::Repository.new # Repository | 
}

begin
  #Updates a repository
  result = api_instance.update_repository(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling RepositoryApi->update_repository: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Repository**](Repository.md)|  | [optional] 

### Return type

[**Repository**](Repository.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

