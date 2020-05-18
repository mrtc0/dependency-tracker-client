# DependencyTracker::ComponentApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_component**](ComponentApi.md#create_component) | **PUT** /v1/component | Creates a new component
[**delete_component**](ComponentApi.md#delete_component) | **DELETE** /v1/component/{uuid} | Deletes a component
[**get_all_components**](ComponentApi.md#get_all_components) | **GET** /v1/component | Returns a list of all components
[**get_component_by_hash**](ComponentApi.md#get_component_by_hash) | **GET** /v1/component/hash/{hash} | Returns a specific component
[**get_component_by_uuid**](ComponentApi.md#get_component_by_uuid) | **GET** /v1/component/{uuid} | Returns a specific component
[**identify_internal_components**](ComponentApi.md#identify_internal_components) | **GET** /v1/component/internal/identify | Requests the identification of internal components in the portfolio
[**update_component**](ComponentApi.md#update_component) | **POST** /v1/component | Updates a component



## create_component

> Component create_component(opts)

Creates a new component

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

api_instance = DependencyTracker::ComponentApi.new
opts = {
  body: DependencyTracker::Component.new # Component | 
}

begin
  #Creates a new component
  result = api_instance.create_component(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ComponentApi->create_component: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Component**](Component.md)|  | [optional] 

### Return type

[**Component**](Component.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_component

> delete_component(uuid)

Deletes a component

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

api_instance = DependencyTracker::ComponentApi.new
uuid = 'uuid_example' # String | The UUID of the component to delete

begin
  #Deletes a component
  api_instance.delete_component(uuid)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ComponentApi->delete_component: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the component to delete | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_all_components

> Array&lt;Component&gt; get_all_components

Returns a list of all components

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

api_instance = DependencyTracker::ComponentApi.new

begin
  #Returns a list of all components
  result = api_instance.get_all_components
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ComponentApi->get_all_components: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Component&gt;**](Component.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_component_by_hash

> Component get_component_by_hash(hash)

Returns a specific component

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

api_instance = DependencyTracker::ComponentApi.new
hash = 'hash_example' # String | The MD5, SHA-1, SHA-256, SHA-512, SHA3-256, or SHA3-512 hash of the component to retrieve

begin
  #Returns a specific component
  result = api_instance.get_component_by_hash(hash)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ComponentApi->get_component_by_hash: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| The MD5, SHA-1, SHA-256, SHA-512, SHA3-256, or SHA3-512 hash of the component to retrieve | 

### Return type

[**Component**](Component.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_component_by_uuid

> Component get_component_by_uuid(uuid)

Returns a specific component

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

api_instance = DependencyTracker::ComponentApi.new
uuid = 'uuid_example' # String | The UUID of the component to retrieve

begin
  #Returns a specific component
  result = api_instance.get_component_by_uuid(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ComponentApi->get_component_by_uuid: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the component to retrieve | 

### Return type

[**Component**](Component.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## identify_internal_components

> identify_internal_components

Requests the identification of internal components in the portfolio

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

api_instance = DependencyTracker::ComponentApi.new

begin
  #Requests the identification of internal components in the portfolio
  api_instance.identify_internal_components
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ComponentApi->identify_internal_components: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_component

> Component update_component(opts)

Updates a component

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

api_instance = DependencyTracker::ComponentApi.new
opts = {
  body: DependencyTracker::Component.new # Component | 
}

begin
  #Updates a component
  result = api_instance.update_component(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ComponentApi->update_component: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Component**](Component.md)|  | [optional] 

### Return type

[**Component**](Component.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

