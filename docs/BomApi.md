# DependencyTracker::BomApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_component_as_cyclone_dx**](BomApi.md#export_component_as_cyclone_dx) | **GET** /v1/bom/cyclonedx/component/{uuid} | Returns dependency metadata for a specific component in CycloneDX format
[**export_components_as_cyclone_dx**](BomApi.md#export_components_as_cyclone_dx) | **GET** /v1/bom/cyclonedx/components | Returns dependency metadata for all components in CycloneDX format
[**export_project_as_cyclone_dx**](BomApi.md#export_project_as_cyclone_dx) | **GET** /v1/bom/cyclonedx/project/{uuid} | Returns dependency metadata for a project in CycloneDX format
[**is_token_being_processed**](BomApi.md#is_token_being_processed) | **GET** /v1/bom/token/{uuid} | Determines if there are any tasks associated with the token that are being processed, or in the queue to be processed.
[**upload_bom**](BomApi.md#upload_bom) | **POST** /v1/bom | Upload a supported bill of material format document
[**upload_bom1**](BomApi.md#upload_bom1) | **PUT** /v1/bom | Upload a supported bill of material format document



## export_component_as_cyclone_dx

> String export_component_as_cyclone_dx(uuid)

Returns dependency metadata for a specific component in CycloneDX format

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

api_instance = DependencyTracker::BomApi.new
uuid = 'uuid_example' # String | The UUID of the project to export

begin
  #Returns dependency metadata for a specific component in CycloneDX format
  result = api_instance.export_component_as_cyclone_dx(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling BomApi->export_component_as_cyclone_dx: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the project to export | 

### Return type

**String**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/xml


## export_components_as_cyclone_dx

> String export_components_as_cyclone_dx

Returns dependency metadata for all components in CycloneDX format

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

api_instance = DependencyTracker::BomApi.new

begin
  #Returns dependency metadata for all components in CycloneDX format
  result = api_instance.export_components_as_cyclone_dx
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling BomApi->export_components_as_cyclone_dx: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/xml


## export_project_as_cyclone_dx

> String export_project_as_cyclone_dx(uuid)

Returns dependency metadata for a project in CycloneDX format

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

api_instance = DependencyTracker::BomApi.new
uuid = 'uuid_example' # String | The UUID of the project to export

begin
  #Returns dependency metadata for a project in CycloneDX format
  result = api_instance.export_project_as_cyclone_dx(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling BomApi->export_project_as_cyclone_dx: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the project to export | 

### Return type

**String**

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/xml


## is_token_being_processed

> is_token_being_processed(uuid)

Determines if there are any tasks associated with the token that are being processed, or in the queue to be processed.

This endpoint is intended to be used in conjunction with uploading a supported BOM document. Upon upload, a token will be returned. The token can then be queried using this endpoint to determine if any tasks (such as vulnerability analysis) is being performed on the BOM. A value of true indicates processing is occurring. A value of false indicates that no processing is occurring for the specified token. However, a value of false also does not confirm the token is valid, only that no processing is associated with the specified token.

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

api_instance = DependencyTracker::BomApi.new
uuid = 'uuid_example' # String | The UUID of the token to query

begin
  #Determines if there are any tasks associated with the token that are being processed, or in the queue to be processed.
  api_instance.is_token_being_processed(uuid)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling BomApi->is_token_being_processed: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the token to query | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## upload_bom

> upload_bom(opts)

Upload a supported bill of material format document

Expects CycloneDX or SPDX (text or RDF) along and a valid project UUID. If a UUID is not specified, than the projectName and projectVersion must be specified. Optionally, if autoCreate is specified and 'true' and the project does not exist, the project will be created. In this scenario, the principal making the request will additionally need the PORTFOLIO_MANAGEMENT or PROJECT_CREATION_UPLOAD permission.

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

api_instance = DependencyTracker::BomApi.new
opts = {
  project: 'project_example', # String | 
  auto_create: false, # Boolean | 
  project_name: 'project_name_example', # String | 
  project_version: 'project_version_example' # String | 
}

begin
  #Upload a supported bill of material format document
  api_instance.upload_bom(opts)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling BomApi->upload_bom: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **String**|  | [optional] 
 **auto_create** | **Boolean**|  | [optional] [default to false]
 **project_name** | **String**|  | [optional] 
 **project_version** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined


## upload_bom1

> upload_bom1(opts)

Upload a supported bill of material format document

Expects CycloneDX or SPDX (text or RDF) along and a valid project UUID. If a UUID is not specified, than the projectName and projectVersion must be specified. Optionally, if autoCreate is specified and 'true' and the project does not exist, the project will be created. In this scenario, the principal making the request will additionally need the PORTFOLIO_MANAGEMENT or PROJECT_CREATION_UPLOAD permission.

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

api_instance = DependencyTracker::BomApi.new
opts = {
  body: DependencyTracker::BomSubmitRequest.new # BomSubmitRequest | 
}

begin
  #Upload a supported bill of material format document
  api_instance.upload_bom1(opts)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling BomApi->upload_bom1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BomSubmitRequest**](BomSubmitRequest.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

