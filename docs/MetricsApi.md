# DependencyTracker::MetricsApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_component_current_metrics**](MetricsApi.md#get_component_current_metrics) | **GET** /v1/metrics/component/{uuid}/current | Returns current metrics for a specific component
[**get_component_metrics_since**](MetricsApi.md#get_component_metrics_since) | **GET** /v1/metrics/component/{uuid}/since/{date} | Returns historical metrics for a specific component from a specific date
[**get_component_metrics_x_days**](MetricsApi.md#get_component_metrics_x_days) | **GET** /v1/metrics/component/{uuid}/days/{days} | Returns X days of historical metrics for a specific component
[**get_dependency_current_metrics**](MetricsApi.md#get_dependency_current_metrics) | **GET** /v1/metrics/project/{projectUuid}/component/{componentUuid}/current | Returns current metrics for a specific dependency
[**get_dependency_metrics_since**](MetricsApi.md#get_dependency_metrics_since) | **GET** /v1/metrics/project/{projectUuid}/component/{componentUuid}/since/{date} | Returns historical metrics for a specific dependency from a specific date
[**get_dependency_metrics_x_days**](MetricsApi.md#get_dependency_metrics_x_days) | **GET** /v1/metrics/project/{projectUuid}/component/{componentUuid}/days/{days} | Returns X days of historical metrics for a specific dependency
[**get_portfolio_current_metrics**](MetricsApi.md#get_portfolio_current_metrics) | **GET** /v1/metrics/portfolio/current | Returns current metrics for the entire portfolio
[**get_portfolio_metrics_since**](MetricsApi.md#get_portfolio_metrics_since) | **GET** /v1/metrics/portfolio/since/{date} | Returns historical metrics for the entire portfolio from a specific date
[**get_portfolio_metrics_x_days**](MetricsApi.md#get_portfolio_metrics_x_days) | **GET** /v1/metrics/portfolio/{days}/days | Returns X days of historical metrics for the entire portfolio
[**get_project_current_metrics**](MetricsApi.md#get_project_current_metrics) | **GET** /v1/metrics/project/{uuid}/current | Returns current metrics for a specific project
[**get_project_metrics_since**](MetricsApi.md#get_project_metrics_since) | **GET** /v1/metrics/project/{uuid}/since/{date} | Returns historical metrics for a specific project from a specific date
[**get_project_metrics_x_days**](MetricsApi.md#get_project_metrics_x_days) | **GET** /v1/metrics/project/{uuid}/days/{days} | Returns X days of historical metrics for a specific project
[**get_vulnerability_metrics**](MetricsApi.md#get_vulnerability_metrics) | **GET** /v1/metrics/vulnerability | Returns the sum of all vulnerabilities in the database by year and month
[**refresh_component_metrics**](MetricsApi.md#refresh_component_metrics) | **GET** /v1/metrics/component/{uuid}/refresh | Requests a refresh of a specific components metrics
[**refresh_dependency_metrics**](MetricsApi.md#refresh_dependency_metrics) | **GET** /v1/metrics/project/{projectUuid}/component/{componentUuid}/refresh | Requests a refresh of a specific dependency metrics
[**refresh_portfolio_metrics**](MetricsApi.md#refresh_portfolio_metrics) | **GET** /v1/metrics/portfolio/refresh | Requests a refresh of the portfolio metrics
[**refresh_project_metrics**](MetricsApi.md#refresh_project_metrics) | **GET** /v1/metrics/project/{uuid}/refresh | Requests a refresh of a specific projects metrics



## get_component_current_metrics

> ComponentMetrics get_component_current_metrics(uuid)

Returns current metrics for a specific component

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

api_instance = DependencyTracker::MetricsApi.new
uuid = 'uuid_example' # String | The UUID of the component to retrieve metrics for

begin
  #Returns current metrics for a specific component
  result = api_instance.get_component_current_metrics(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->get_component_current_metrics: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the component to retrieve metrics for | 

### Return type

[**ComponentMetrics**](ComponentMetrics.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_component_metrics_since

> Array&lt;ComponentMetrics&gt; get_component_metrics_since(uuid, date)

Returns historical metrics for a specific component from a specific date

Date format must be YYYYMMDD

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

api_instance = DependencyTracker::MetricsApi.new
uuid = 'uuid_example' # String | The UUID of the component to retrieve metrics for
date = 'date_example' # String | The start date to retrieve metrics for

begin
  #Returns historical metrics for a specific component from a specific date
  result = api_instance.get_component_metrics_since(uuid, date)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->get_component_metrics_since: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the component to retrieve metrics for | 
 **date** | **String**| The start date to retrieve metrics for | 

### Return type

[**Array&lt;ComponentMetrics&gt;**](ComponentMetrics.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_component_metrics_x_days

> Array&lt;ComponentMetrics&gt; get_component_metrics_x_days(uuid, days)

Returns X days of historical metrics for a specific component

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

api_instance = DependencyTracker::MetricsApi.new
uuid = 'uuid_example' # String | The UUID of the component to retrieve metrics for
days = 56 # Integer | The number of days back to retrieve metrics for

begin
  #Returns X days of historical metrics for a specific component
  result = api_instance.get_component_metrics_x_days(uuid, days)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->get_component_metrics_x_days: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the component to retrieve metrics for | 
 **days** | **Integer**| The number of days back to retrieve metrics for | 

### Return type

[**Array&lt;ComponentMetrics&gt;**](ComponentMetrics.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dependency_current_metrics

> DependencyMetrics get_dependency_current_metrics(project_uuid, component_uuid)

Returns current metrics for a specific dependency

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

api_instance = DependencyTracker::MetricsApi.new
project_uuid = 'project_uuid_example' # String | The UUID of the project to retrieve metrics for
component_uuid = 'component_uuid_example' # String | The UUID of the component to retrieve metrics for

begin
  #Returns current metrics for a specific dependency
  result = api_instance.get_dependency_current_metrics(project_uuid, component_uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->get_dependency_current_metrics: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_uuid** | **String**| The UUID of the project to retrieve metrics for | 
 **component_uuid** | **String**| The UUID of the component to retrieve metrics for | 

### Return type

[**DependencyMetrics**](DependencyMetrics.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dependency_metrics_since

> Array&lt;DependencyMetrics&gt; get_dependency_metrics_since(project_uuid, component_uuid, date)

Returns historical metrics for a specific dependency from a specific date

Date format must be YYYYMMDD

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

api_instance = DependencyTracker::MetricsApi.new
project_uuid = 'project_uuid_example' # String | The UUID of the project to retrieve metrics for
component_uuid = 'component_uuid_example' # String | The UUID of the component to retrieve metrics for
date = 'date_example' # String | The start date to retrieve metrics for

begin
  #Returns historical metrics for a specific dependency from a specific date
  result = api_instance.get_dependency_metrics_since(project_uuid, component_uuid, date)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->get_dependency_metrics_since: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_uuid** | **String**| The UUID of the project to retrieve metrics for | 
 **component_uuid** | **String**| The UUID of the component to retrieve metrics for | 
 **date** | **String**| The start date to retrieve metrics for | 

### Return type

[**Array&lt;DependencyMetrics&gt;**](DependencyMetrics.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dependency_metrics_x_days

> Array&lt;DependencyMetrics&gt; get_dependency_metrics_x_days(project_uuid, component_uuid, days)

Returns X days of historical metrics for a specific dependency

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

api_instance = DependencyTracker::MetricsApi.new
project_uuid = 'project_uuid_example' # String | The UUID of the project to retrieve metrics for
component_uuid = 'component_uuid_example' # String | The UUID of the component to retrieve metrics for
days = 56 # Integer | The number of days back to retrieve metrics for

begin
  #Returns X days of historical metrics for a specific dependency
  result = api_instance.get_dependency_metrics_x_days(project_uuid, component_uuid, days)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->get_dependency_metrics_x_days: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_uuid** | **String**| The UUID of the project to retrieve metrics for | 
 **component_uuid** | **String**| The UUID of the component to retrieve metrics for | 
 **days** | **Integer**| The number of days back to retrieve metrics for | 

### Return type

[**Array&lt;DependencyMetrics&gt;**](DependencyMetrics.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portfolio_current_metrics

> PortfolioMetrics get_portfolio_current_metrics

Returns current metrics for the entire portfolio

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

api_instance = DependencyTracker::MetricsApi.new

begin
  #Returns current metrics for the entire portfolio
  result = api_instance.get_portfolio_current_metrics
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->get_portfolio_current_metrics: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PortfolioMetrics**](PortfolioMetrics.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portfolio_metrics_since

> Array&lt;PortfolioMetrics&gt; get_portfolio_metrics_since(date)

Returns historical metrics for the entire portfolio from a specific date

Date format must be YYYYMMDD

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

api_instance = DependencyTracker::MetricsApi.new
date = 'date_example' # String | The start date to retrieve metrics for

begin
  #Returns historical metrics for the entire portfolio from a specific date
  result = api_instance.get_portfolio_metrics_since(date)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->get_portfolio_metrics_since: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **String**| The start date to retrieve metrics for | 

### Return type

[**Array&lt;PortfolioMetrics&gt;**](PortfolioMetrics.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portfolio_metrics_x_days

> Array&lt;PortfolioMetrics&gt; get_portfolio_metrics_x_days(days)

Returns X days of historical metrics for the entire portfolio

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

api_instance = DependencyTracker::MetricsApi.new
days = 56 # Integer | The number of days back to retrieve metrics for

begin
  #Returns X days of historical metrics for the entire portfolio
  result = api_instance.get_portfolio_metrics_x_days(days)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->get_portfolio_metrics_x_days: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **days** | **Integer**| The number of days back to retrieve metrics for | 

### Return type

[**Array&lt;PortfolioMetrics&gt;**](PortfolioMetrics.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_current_metrics

> ProjectMetrics get_project_current_metrics(uuid)

Returns current metrics for a specific project

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

api_instance = DependencyTracker::MetricsApi.new
uuid = 'uuid_example' # String | The UUID of the project to retrieve metrics for

begin
  #Returns current metrics for a specific project
  result = api_instance.get_project_current_metrics(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->get_project_current_metrics: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the project to retrieve metrics for | 

### Return type

[**ProjectMetrics**](ProjectMetrics.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_metrics_since

> Array&lt;ProjectMetrics&gt; get_project_metrics_since(uuid, date)

Returns historical metrics for a specific project from a specific date

Date format must be YYYYMMDD

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

api_instance = DependencyTracker::MetricsApi.new
uuid = 'uuid_example' # String | The UUID of the project to retrieve metrics for
date = 'date_example' # String | The start date to retrieve metrics for

begin
  #Returns historical metrics for a specific project from a specific date
  result = api_instance.get_project_metrics_since(uuid, date)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->get_project_metrics_since: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the project to retrieve metrics for | 
 **date** | **String**| The start date to retrieve metrics for | 

### Return type

[**Array&lt;ProjectMetrics&gt;**](ProjectMetrics.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_metrics_x_days

> Array&lt;ProjectMetrics&gt; get_project_metrics_x_days(uuid, days)

Returns X days of historical metrics for a specific project

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

api_instance = DependencyTracker::MetricsApi.new
uuid = 'uuid_example' # String | The UUID of the project to retrieve metrics for
days = 56 # Integer | The number of days back to retrieve metrics for

begin
  #Returns X days of historical metrics for a specific project
  result = api_instance.get_project_metrics_x_days(uuid, days)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->get_project_metrics_x_days: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the project to retrieve metrics for | 
 **days** | **Integer**| The number of days back to retrieve metrics for | 

### Return type

[**Array&lt;ProjectMetrics&gt;**](ProjectMetrics.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vulnerability_metrics

> Array&lt;VulnerabilityMetrics&gt; get_vulnerability_metrics

Returns the sum of all vulnerabilities in the database by year and month

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

api_instance = DependencyTracker::MetricsApi.new

begin
  #Returns the sum of all vulnerabilities in the database by year and month
  result = api_instance.get_vulnerability_metrics
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->get_vulnerability_metrics: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;VulnerabilityMetrics&gt;**](VulnerabilityMetrics.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## refresh_component_metrics

> refresh_component_metrics(uuid)

Requests a refresh of a specific components metrics

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

api_instance = DependencyTracker::MetricsApi.new
uuid = 'uuid_example' # String | The UUID of the component to refresh metrics on

begin
  #Requests a refresh of a specific components metrics
  api_instance.refresh_component_metrics(uuid)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->refresh_component_metrics: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the component to refresh metrics on | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## refresh_dependency_metrics

> refresh_dependency_metrics(project_uuid, component_uuid)

Requests a refresh of a specific dependency metrics

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

api_instance = DependencyTracker::MetricsApi.new
project_uuid = 'project_uuid_example' # String | The UUID of the project to retrieve metrics for
component_uuid = 'component_uuid_example' # String | The UUID of the component to retrieve metrics for

begin
  #Requests a refresh of a specific dependency metrics
  api_instance.refresh_dependency_metrics(project_uuid, component_uuid)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->refresh_dependency_metrics: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_uuid** | **String**| The UUID of the project to retrieve metrics for | 
 **component_uuid** | **String**| The UUID of the component to retrieve metrics for | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## refresh_portfolio_metrics

> PortfolioMetrics refresh_portfolio_metrics

Requests a refresh of the portfolio metrics

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

api_instance = DependencyTracker::MetricsApi.new

begin
  #Requests a refresh of the portfolio metrics
  result = api_instance.refresh_portfolio_metrics
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->refresh_portfolio_metrics: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PortfolioMetrics**](PortfolioMetrics.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## refresh_project_metrics

> refresh_project_metrics(uuid)

Requests a refresh of a specific projects metrics

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

api_instance = DependencyTracker::MetricsApi.new
uuid = 'uuid_example' # String | The UUID of the project to refresh metrics on

begin
  #Requests a refresh of a specific projects metrics
  api_instance.refresh_project_metrics(uuid)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling MetricsApi->refresh_project_metrics: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the project to refresh metrics on | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

