# DependencyTracker::VersionApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_version**](VersionApi.md#get_version) | **GET** /version | Returns application version information



## get_version

> About get_version

Returns application version information

Returns a simple json object containing the name of the application and the version

### Example

```ruby
# load the gem
require 'dependency-tracker-client'

api_instance = DependencyTracker::VersionApi.new

begin
  #Returns application version information
  result = api_instance.get_version
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling VersionApi->get_version: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**About**](About.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

