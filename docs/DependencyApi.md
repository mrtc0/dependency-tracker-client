# DependencyTracker::DependencyApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_dependency**](DependencyApi.md#add_dependency) | **PUT** /v1/dependency | Adds one or more components as a dependency to a project
[**get_dependencies_by_component**](DependencyApi.md#get_dependencies_by_component) | **GET** /v1/dependency/component/{uuid} | Returns a list of all dependencies for a specific component
[**get_dependencies_by_project**](DependencyApi.md#get_dependencies_by_project) | **GET** /v1/dependency/project/{uuid} | Returns a list of all dependencies for a specific project
[**remove_dependency**](DependencyApi.md#remove_dependency) | **DELETE** /v1/dependency | Removes a component as a dependency from a project



## add_dependency

> add_dependency(opts)

Adds one or more components as a dependency to a project

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

api_instance = DependencyTracker::DependencyApi.new
opts = {
  body: DependencyTracker::DependencyRequest.new # DependencyRequest | 
}

begin
  #Adds one or more components as a dependency to a project
  api_instance.add_dependency(opts)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling DependencyApi->add_dependency: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DependencyRequest**](DependencyRequest.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_dependencies_by_component

> Array&lt;Dependency&gt; get_dependencies_by_component(uuid)

Returns a list of all dependencies for a specific component

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

api_instance = DependencyTracker::DependencyApi.new
uuid = 'uuid_example' # String | 

begin
  #Returns a list of all dependencies for a specific component
  result = api_instance.get_dependencies_by_component(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling DependencyApi->get_dependencies_by_component: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 

### Return type

[**Array&lt;Dependency&gt;**](Dependency.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dependencies_by_project

> Array&lt;Dependency&gt; get_dependencies_by_project(uuid)

Returns a list of all dependencies for a specific project

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

api_instance = DependencyTracker::DependencyApi.new
uuid = 'uuid_example' # String | 

begin
  #Returns a list of all dependencies for a specific project
  result = api_instance.get_dependencies_by_project(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling DependencyApi->get_dependencies_by_project: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 

### Return type

[**Array&lt;Dependency&gt;**](Dependency.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_dependency

> remove_dependency(opts)

Removes a component as a dependency from a project

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

api_instance = DependencyTracker::DependencyApi.new
opts = {
  body: DependencyTracker::DependencyRequest.new # DependencyRequest | 
}

begin
  #Removes a component as a dependency from a project
  api_instance.remove_dependency(opts)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling DependencyApi->remove_dependency: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DependencyRequest**](DependencyRequest.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

