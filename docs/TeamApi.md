# DependencyTracker::TeamApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_team**](TeamApi.md#create_team) | **PUT** /v1/team | Creates a new team along with an associated API key
[**delete_api_key**](TeamApi.md#delete_api_key) | **DELETE** /v1/team/key/{apikey} | Deletes the specified API key
[**delete_team**](TeamApi.md#delete_team) | **DELETE** /v1/team | Deletes a team
[**generate_api_key**](TeamApi.md#generate_api_key) | **PUT** /v1/team/{uuid}/key | Generates an API key and returns its value
[**get_team**](TeamApi.md#get_team) | **GET** /v1/team/{uuid} | Returns a specific team
[**get_teams**](TeamApi.md#get_teams) | **GET** /v1/team | Returns a list of all teams
[**regenerate_api_key**](TeamApi.md#regenerate_api_key) | **POST** /v1/team/key/{apikey} | Regenerates an API key by removing the specified key, generating a new one and returning its value
[**update_team**](TeamApi.md#update_team) | **POST** /v1/team | Updates a team&#39;s fields including



## create_team

> Team create_team(opts)

Creates a new team along with an associated API key

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

api_instance = DependencyTracker::TeamApi.new
opts = {
  body: DependencyTracker::Team.new # Team | 
}

begin
  #Creates a new team along with an associated API key
  result = api_instance.create_team(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling TeamApi->create_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Team**](Team.md)|  | [optional] 

### Return type

[**Team**](Team.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_api_key

> delete_api_key(apikey)

Deletes the specified API key

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

api_instance = DependencyTracker::TeamApi.new
apikey = 'apikey_example' # String | The API key to delete

begin
  #Deletes the specified API key
  api_instance.delete_api_key(apikey)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling TeamApi->delete_api_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apikey** | **String**| The API key to delete | 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_team

> delete_team(opts)

Deletes a team

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

api_instance = DependencyTracker::TeamApi.new
opts = {
  body: DependencyTracker::Team.new # Team | 
}

begin
  #Deletes a team
  api_instance.delete_team(opts)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling TeamApi->delete_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Team**](Team.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## generate_api_key

> ApiKey generate_api_key(uuid)

Generates an API key and returns its value

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

api_instance = DependencyTracker::TeamApi.new
uuid = 'uuid_example' # String | The UUID of the team to generate a key for

begin
  #Generates an API key and returns its value
  result = api_instance.generate_api_key(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling TeamApi->generate_api_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the team to generate a key for | 

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_team

> Team get_team(uuid)

Returns a specific team

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

api_instance = DependencyTracker::TeamApi.new
uuid = 'uuid_example' # String | The UUID of the team to retrieve

begin
  #Returns a specific team
  result = api_instance.get_team(uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling TeamApi->get_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The UUID of the team to retrieve | 

### Return type

[**Team**](Team.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_teams

> Array&lt;Team&gt; get_teams

Returns a list of all teams

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

api_instance = DependencyTracker::TeamApi.new

begin
  #Returns a list of all teams
  result = api_instance.get_teams
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling TeamApi->get_teams: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Team&gt;**](Team.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## regenerate_api_key

> ApiKey regenerate_api_key(apikey)

Regenerates an API key by removing the specified key, generating a new one and returning its value

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

api_instance = DependencyTracker::TeamApi.new
apikey = 'apikey_example' # String | The API key to regenerate

begin
  #Regenerates an API key by removing the specified key, generating a new one and returning its value
  result = api_instance.regenerate_api_key(apikey)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling TeamApi->regenerate_api_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apikey** | **String**| The API key to regenerate | 

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_team

> Team update_team(opts)

Updates a team's fields including

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

api_instance = DependencyTracker::TeamApi.new
opts = {
  body: DependencyTracker::Team.new # Team | 
}

begin
  #Updates a team's fields including
  result = api_instance.update_team(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling TeamApi->update_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Team**](Team.md)|  | [optional] 

### Return type

[**Team**](Team.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

