# DependencyTracker::ConfigPropertyApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_config_properties**](ConfigPropertyApi.md#get_config_properties) | **GET** /v1/configProperty | Returns a list of all ConfigProperties for the specified groupName
[**update_config_property**](ConfigPropertyApi.md#update_config_property) | **POST** /v1/configProperty | Updates a config property
[**update_config_property1**](ConfigPropertyApi.md#update_config_property1) | **POST** /v1/configProperty/aggregate | Updates an array of config properties



## get_config_properties

> Array&lt;ConfigProperty&gt; get_config_properties

Returns a list of all ConfigProperties for the specified groupName

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

api_instance = DependencyTracker::ConfigPropertyApi.new

begin
  #Returns a list of all ConfigProperties for the specified groupName
  result = api_instance.get_config_properties
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ConfigPropertyApi->get_config_properties: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ConfigProperty&gt;**](ConfigProperty.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_config_property

> ConfigProperty update_config_property(opts)

Updates a config property

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

api_instance = DependencyTracker::ConfigPropertyApi.new
opts = {
  body: DependencyTracker::ConfigProperty.new # ConfigProperty | 
}

begin
  #Updates a config property
  result = api_instance.update_config_property(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ConfigPropertyApi->update_config_property: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConfigProperty**](ConfigProperty.md)|  | [optional] 

### Return type

[**ConfigProperty**](ConfigProperty.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_config_property1

> Array&lt;ConfigProperty&gt; update_config_property1(opts)

Updates an array of config properties

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

api_instance = DependencyTracker::ConfigPropertyApi.new
opts = {
  body: [DependencyTracker::ConfigProperty.new] # Array<ConfigProperty> | 
}

begin
  #Updates an array of config properties
  result = api_instance.update_config_property1(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling ConfigPropertyApi->update_config_property1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Array&lt;ConfigProperty&gt;**](ConfigProperty.md)|  | [optional] 

### Return type

[**Array&lt;ConfigProperty&gt;**](ConfigProperty.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

