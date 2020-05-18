# DependencyTracker::ProjectApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clone_project**](ProjectApi.md#clone_project) | **PUT** /v1/project/clone | Clones a project
[**create_project**](ProjectApi.md#create_project) | **PUT** /v1/project | Creates a new project
[**delete_project**](ProjectApi.md#delete_project) | **DELETE** /v1/project/{uuid} | Deletes a project
[**get_project**](ProjectApi.md#get_project) | **GET** /v1/project/lookup | Returns a specific project by its name and version
[**get_project1**](ProjectApi.md#get_project1) | **GET** /v1/project/{uuid} | Returns a specific project
[**get_projects**](ProjectApi.md#get_projects) | **GET** /v1/project | Returns a list of all projects
[**get_projects_by_tag**](ProjectApi.md#get_projects_by_tag) | **GET** /v1/project/tag/{tag} | Returns a list of all projects by tag
[**update_project**](ProjectApi.md#update_project) | **POST** /v1/project | Updates a project



## clone_project

> Project clone_project(opts)

Clones a project

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

api_instance = DependencyTracker::ProjectApi.new
opts = {
  body: DependencyTracker::CloneProjectRequest.new # CloneProjectRequest | 
}

begin
  #Clones a project
  result = api_instance.clone_project(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ProjectApi->clone_project: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CloneProjectRequest**](CloneProjectRequest.md)|  | [optional] 

### Return type

[**Project**](Project.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_project

> Project create_project(opts)

Creates a new project

If a parent project exists, the UUID of the parent project is required 

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

api_instance = DependencyTracker::ProjectApi.new
opts = {
  body: DependencyTracker::Project.new # Project | 
}

begin
  #Creates a new project
  result = api_instance.create_project(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ProjectApi->create_project: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Project**](Project.md)|  | [optional] 

### Return type

[**Project**](Project.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_project

> delete_project(uuid)

Deletes a project

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

api_instance = DependencyTracker::ProjectApi.new
uuid = 'uuid_example' # String | The UUID of the project to delete

begin
  #Deletes a project
  api_instance.delete_project(uuid)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ProjectApi->delete_project: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the project to delete | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_project

> Project get_project(name, version)

Returns a specific project by its name and version

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

api_instance = DependencyTracker::ProjectApi.new
name = 'name_example' # String | The name of the project to query on
version = 'version_example' # String | The version of the project to query on

begin
  #Returns a specific project by its name and version
  result = api_instance.get_project(name, version)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ProjectApi->get_project: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the project to query on | 
 **version** | **String**| The version of the project to query on | 

### Return type

[**Project**](Project.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project1

> Project get_project1(uuid)

Returns a specific project

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

api_instance = DependencyTracker::ProjectApi.new
uuid = 'uuid_example' # String | The UUID of the project to retrieve

begin
  #Returns a specific project
  result = api_instance.get_project1(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ProjectApi->get_project1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the project to retrieve | 

### Return type

[**Project**](Project.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_projects

> Array&lt;Project&gt; get_projects(opts)

Returns a list of all projects

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

api_instance = DependencyTracker::ProjectApi.new
opts = {
  name: 'name_example', # String | The optional name of the project to query on
  exclude_inactive: true # Boolean | Optionally excludes inactive projects from being returned
}

begin
  #Returns a list of all projects
  result = api_instance.get_projects(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ProjectApi->get_projects: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The optional name of the project to query on | [optional] 
 **exclude_inactive** | **Boolean**| Optionally excludes inactive projects from being returned | [optional] 

### Return type

[**Array&lt;Project&gt;**](Project.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_projects_by_tag

> Array&lt;Project&gt; get_projects_by_tag(tag)

Returns a list of all projects by tag

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

api_instance = DependencyTracker::ProjectApi.new
tag = 'tag_example' # String | The tag to query on

begin
  #Returns a list of all projects by tag
  result = api_instance.get_projects_by_tag(tag)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ProjectApi->get_projects_by_tag: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | **String**| The tag to query on | 

### Return type

[**Array&lt;Project&gt;**](Project.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_project

> Project update_project(opts)

Updates a project

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

api_instance = DependencyTracker::ProjectApi.new
opts = {
  body: DependencyTracker::Project.new # Project | 
}

begin
  #Updates a project
  result = api_instance.update_project(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ProjectApi->update_project: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Project**](Project.md)|  | [optional] 

### Return type

[**Project**](Project.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

