# DependencyTracker::LicenseApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_license**](LicenseApi.md#get_license) | **GET** /v1/license/{licenseId} | Returns a specific license
[**get_license_listing**](LicenseApi.md#get_license_listing) | **GET** /v1/license/concise | Returns a concise listing of all licenses
[**get_licenses**](LicenseApi.md#get_licenses) | **GET** /v1/license | Returns a list of all licenses with complete metadata for each license



## get_license

> License get_license(license_id)

Returns a specific license

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

api_instance = DependencyTracker::LicenseApi.new
license_id = 'license_id_example' # String | The SPDX License ID of the license to retrieve

begin
  #Returns a specific license
  result = api_instance.get_license(license_id)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling LicenseApi->get_license: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **license_id** | **String**| The SPDX License ID of the license to retrieve | 

### Return type

[**License**](License.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_license_listing

> Array&lt;License&gt; get_license_listing

Returns a concise listing of all licenses

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

api_instance = DependencyTracker::LicenseApi.new

begin
  #Returns a concise listing of all licenses
  result = api_instance.get_license_listing
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling LicenseApi->get_license_listing: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;License&gt;**](License.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_licenses

> Array&lt;License&gt; get_licenses

Returns a list of all licenses with complete metadata for each license

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

api_instance = DependencyTracker::LicenseApi.new

begin
  #Returns a list of all licenses with complete metadata for each license
  result = api_instance.get_licenses
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling LicenseApi->get_licenses: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;License&gt;**](License.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

