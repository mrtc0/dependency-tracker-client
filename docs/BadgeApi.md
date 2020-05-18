# DependencyTracker::BadgeApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_project_vulnerabilities_badge**](BadgeApi.md#get_project_vulnerabilities_badge) | **GET** /v1/badge/vulns/project/{name}/{version} | Returns current metrics for a specific project
[**get_project_vulnerabilities_badge1**](BadgeApi.md#get_project_vulnerabilities_badge1) | **GET** /v1/badge/vulns/project/{uuid} | Returns current metrics for a specific project



## get_project_vulnerabilities_badge

> ProjectMetrics get_project_vulnerabilities_badge(name, version)

Returns current metrics for a specific project

### Example

```ruby
# load the gem
require 'dependency-tracker-client'

api_instance = DependencyTracker::BadgeApi.new
name = 'name_example' # String | The name of the project to query on
version = 'version_example' # String | The version of the project to query on

begin
  #Returns current metrics for a specific project
  result = api_instance.get_project_vulnerabilities_badge(name, version)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling BadgeApi->get_project_vulnerabilities_badge: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the project to query on | 
 **version** | **String**| The version of the project to query on | 

### Return type

[**ProjectMetrics**](ProjectMetrics.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/svg+xml


## get_project_vulnerabilities_badge1

> ProjectMetrics get_project_vulnerabilities_badge1(uuid)

Returns current metrics for a specific project

### Example

```ruby
# load the gem
require 'dependency-tracker-client'

api_instance = DependencyTracker::BadgeApi.new
uuid = 'uuid_example' # String | The UUID of the project to retrieve metrics for

begin
  #Returns current metrics for a specific project
  result = api_instance.get_project_vulnerabilities_badge1(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling BadgeApi->get_project_vulnerabilities_badge1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the project to retrieve metrics for | 

### Return type

[**ProjectMetrics**](ProjectMetrics.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/svg+xml

