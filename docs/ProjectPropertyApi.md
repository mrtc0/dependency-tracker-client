# DependencyTracker::ProjectPropertyApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_property**](ProjectPropertyApi.md#create_property) | **PUT** /v1/project/{uuid}/property | Creates a new project property
[**delete_property**](ProjectPropertyApi.md#delete_property) | **DELETE** /v1/project/{uuid}/property | Deletes a config property
[**get_properties**](ProjectPropertyApi.md#get_properties) | **GET** /v1/project/{uuid}/property | Returns a list of all ProjectProperties for the specified project
[**update_property**](ProjectPropertyApi.md#update_property) | **POST** /v1/project/{uuid}/property | Updates a project property



## create_property

> ProjectProperty create_property(uuid, opts)

Creates a new project property

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

api_instance = DependencyTracker::ProjectPropertyApi.new
uuid = 'uuid_example' # String | The UUID of the project to create a property for
opts = {
  body: DependencyTracker::ProjectProperty.new # ProjectProperty | 
}

begin
  #Creates a new project property
  result = api_instance.create_property(uuid, opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ProjectPropertyApi->create_property: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the project to create a property for | 
 **body** | [**ProjectProperty**](ProjectProperty.md)|  | [optional] 

### Return type

[**ProjectProperty**](ProjectProperty.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_property

> ProjectProperty delete_property(uuid, opts)

Deletes a config property

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

api_instance = DependencyTracker::ProjectPropertyApi.new
uuid = 'uuid_example' # String | The UUID of the project to delete a property from
opts = {
  body: DependencyTracker::ProjectProperty.new # ProjectProperty | 
}

begin
  #Deletes a config property
  result = api_instance.delete_property(uuid, opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ProjectPropertyApi->delete_property: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the project to delete a property from | 
 **body** | [**ProjectProperty**](ProjectProperty.md)|  | [optional] 

### Return type

[**ProjectProperty**](ProjectProperty.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_properties

> Array&lt;ProjectProperty&gt; get_properties(uuid)

Returns a list of all ProjectProperties for the specified project

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

api_instance = DependencyTracker::ProjectPropertyApi.new
uuid = 'uuid_example' # String | The UUID of the project to retrieve properties for

begin
  #Returns a list of all ProjectProperties for the specified project
  result = api_instance.get_properties(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ProjectPropertyApi->get_properties: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the project to retrieve properties for | 

### Return type

[**Array&lt;ProjectProperty&gt;**](ProjectProperty.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_property

> ProjectProperty update_property(uuid, opts)

Updates a project property

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

api_instance = DependencyTracker::ProjectPropertyApi.new
uuid = 'uuid_example' # String | The UUID of the project to create a property for
opts = {
  body: DependencyTracker::ProjectProperty.new # ProjectProperty | 
}

begin
  #Updates a project property
  result = api_instance.update_property(uuid, opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ProjectPropertyApi->update_property: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the project to create a property for | 
 **body** | [**ProjectProperty**](ProjectProperty.md)|  | [optional] 

### Return type

[**ProjectProperty**](ProjectProperty.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

