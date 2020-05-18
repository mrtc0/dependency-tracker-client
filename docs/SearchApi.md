# DependencyTracker::SearchApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search**](SearchApi.md#search) | **GET** /v1/search/{query} | Processes and returns search results
[**search_via_query_string**](SearchApi.md#search_via_query_string) | **GET** /v1/search | Processes and returns search results



## search

> SearchResult search(query)

Processes and returns search results

Use of this endpoint may lead to URL encoding/decoding issues and is not recommended

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

api_instance = DependencyTracker::SearchApi.new
query = 'query_example' # String | 

begin
  #Processes and returns search results
  result = api_instance.search(query)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling SearchApi->search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_via_query_string

> SearchResult search_via_query_string(opts)

Processes and returns search results

Preferred search endpoint

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

api_instance = DependencyTracker::SearchApi.new
opts = {
  query: 'query_example' # String | 
}

begin
  #Processes and returns search results
  result = api_instance.search_via_query_string(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling SearchApi->search_via_query_string: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | [optional] 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

