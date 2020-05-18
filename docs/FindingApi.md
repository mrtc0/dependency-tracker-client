# DependencyTracker::FindingApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_findings_by_project**](FindingApi.md#export_findings_by_project) | **GET** /v1/finding/project/{uuid}/export | Returns a the findings for the specified project as FPF
[**get_findings_by_project**](FindingApi.md#get_findings_by_project) | **GET** /v1/finding/project/{uuid} | Returns a list of all findings for a specific project



## export_findings_by_project

> export_findings_by_project(uuid)

Returns a the findings for the specified project as FPF

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

api_instance = DependencyTracker::FindingApi.new
uuid = 'uuid_example' # String | 

begin
  #Returns a the findings for the specified project as FPF
  api_instance.export_findings_by_project(uuid)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling FindingApi->export_findings_by_project: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_findings_by_project

> Array&lt;Finding&gt; get_findings_by_project(uuid)

Returns a list of all findings for a specific project

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

api_instance = DependencyTracker::FindingApi.new
uuid = 'uuid_example' # String | 

begin
  #Returns a list of all findings for a specific project
  result = api_instance.get_findings_by_project(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling FindingApi->get_findings_by_project: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 

### Return type

[**Array&lt;Finding&gt;**](Finding.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

