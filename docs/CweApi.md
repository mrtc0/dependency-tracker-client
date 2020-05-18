# DependencyTracker::CweApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_cwe**](CweApi.md#get_cwe) | **GET** /v1/cwe/{cweId} | Returns a specific CWE
[**get_cwes**](CweApi.md#get_cwes) | **GET** /v1/cwe | Returns a list of all CWEs



## get_cwe

> Cwe get_cwe(cwe_id)

Returns a specific CWE

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

api_instance = DependencyTracker::CweApi.new
cwe_id = 56 # Integer | The CWE ID of the CWE to retrieve

begin
  #Returns a specific CWE
  result = api_instance.get_cwe(cwe_id)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling CweApi->get_cwe: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cwe_id** | **Integer**| The CWE ID of the CWE to retrieve | 

### Return type

[**Cwe**](Cwe.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cwes

> Array&lt;Cwe&gt; get_cwes

Returns a list of all CWEs

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

api_instance = DependencyTracker::CweApi.new

begin
  #Returns a list of all CWEs
  result = api_instance.get_cwes
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling CweApi->get_cwes: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Cwe&gt;**](Cwe.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

