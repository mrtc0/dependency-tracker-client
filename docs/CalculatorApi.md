# DependencyTracker::CalculatorApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_cvss_scores**](CalculatorApi.md#get_cvss_scores) | **GET** /v1/calculator/cvss | Returns the CVSS base score, impact sub-score and exploitability sub-score



## get_cvss_scores

> Score get_cvss_scores(vector)

Returns the CVSS base score, impact sub-score and exploitability sub-score

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

api_instance = DependencyTracker::CalculatorApi.new
vector = 'vector_example' # String | A valid CVSSv2 or CVSSv3 vector

begin
  #Returns the CVSS base score, impact sub-score and exploitability sub-score
  result = api_instance.get_cvss_scores(vector)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling CalculatorApi->get_cvss_scores: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vector** | **String**| A valid CVSSv2 or CVSSv3 vector | 

### Return type

[**Score**](Score.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

