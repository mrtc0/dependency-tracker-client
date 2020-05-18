# DependencyTracker::AnalysisApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**retrieve_analysis**](AnalysisApi.md#retrieve_analysis) | **GET** /v1/analysis | Retrieves an analysis trail
[**update_analysis**](AnalysisApi.md#update_analysis) | **PUT** /v1/analysis | Records an analysis decision
[**update_global_analysis**](AnalysisApi.md#update_global_analysis) | **PUT** /v1/analysis/global | Records an analysis decision



## retrieve_analysis

> Analysis retrieve_analysis(component, vulnerability, opts)

Retrieves an analysis trail

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

api_instance = DependencyTracker::AnalysisApi.new
component = 'component_example' # String | The UUID of the component
vulnerability = 'vulnerability_example' # String | The UUID of the vulnerability
opts = {
  project: 'project_example' # String | The UUID of the project
}

begin
  #Retrieves an analysis trail
  result = api_instance.retrieve_analysis(component, vulnerability, opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling AnalysisApi->retrieve_analysis: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **component** | **String**| The UUID of the component | 
 **vulnerability** | **String**| The UUID of the vulnerability | 
 **project** | **String**| The UUID of the project | [optional] 

### Return type

[**Analysis**](Analysis.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_analysis

> Analysis update_analysis(opts)

Records an analysis decision

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

api_instance = DependencyTracker::AnalysisApi.new
opts = {
  body: DependencyTracker::AnalysisRequest.new # AnalysisRequest | 
}

begin
  #Records an analysis decision
  result = api_instance.update_analysis(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling AnalysisApi->update_analysis: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AnalysisRequest**](AnalysisRequest.md)|  | [optional] 

### Return type

[**Analysis**](Analysis.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_global_analysis

> Analysis update_global_analysis(opts)

Records an analysis decision

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

api_instance = DependencyTracker::AnalysisApi.new
opts = {
  body: DependencyTracker::AnalysisRequest.new # AnalysisRequest | 
}

begin
  #Records an analysis decision
  result = api_instance.update_global_analysis(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling AnalysisApi->update_global_analysis: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AnalysisRequest**](AnalysisRequest.md)|  | [optional] 

### Return type

[**Analysis**](Analysis.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

