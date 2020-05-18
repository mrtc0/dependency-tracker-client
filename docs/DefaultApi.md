# DependencyTracker::DefaultApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_project_to_rule**](DefaultApi.md#add_project_to_rule) | **POST** /v1/notification/rule/{ruleUuid}/project/{projectUuid} | Adds a project to a notification rule
[**create_notification_rule**](DefaultApi.md#create_notification_rule) | **PUT** /v1/notification/rule | Creates a new notification rule
[**delete_notification_rule**](DefaultApi.md#delete_notification_rule) | **DELETE** /v1/notification/rule | Deletes a notification rule
[**get_all_notification_publishers**](DefaultApi.md#get_all_notification_publishers) | **GET** /v1/notification/publisher | Returns a list of all notification publishers
[**get_all_notification_rules**](DefaultApi.md#get_all_notification_rules) | **GET** /v1/notification/rule | Returns a list of all notification rules
[**remove_project_from_rule**](DefaultApi.md#remove_project_from_rule) | **DELETE** /v1/notification/rule/{ruleUuid}/project/{projectUuid} | Removes a project from a notification rule
[**test_smtp_publisher_config**](DefaultApi.md#test_smtp_publisher_config) | **POST** /v1/notification/publisher/test/smtp | Dispatches a SMTP notification test
[**update_notification_rule**](DefaultApi.md#update_notification_rule) | **POST** /v1/notification/rule | Updates a notification rule



## add_project_to_rule

> NotificationRule add_project_to_rule(rule_uuid, project_uuid)

Adds a project to a notification rule

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

api_instance = DependencyTracker::DefaultApi.new
rule_uuid = 'rule_uuid_example' # String | The UUID of the rule to add a project to
project_uuid = 'project_uuid_example' # String | The UUID of the project to add to the rule

begin
  #Adds a project to a notification rule
  result = api_instance.add_project_to_rule(rule_uuid, project_uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling DefaultApi->add_project_to_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_uuid** | **String**| The UUID of the rule to add a project to | 
 **project_uuid** | **String**| The UUID of the project to add to the rule | 

### Return type

[**NotificationRule**](NotificationRule.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_notification_rule

> NotificationRule create_notification_rule(opts)

Creates a new notification rule

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

api_instance = DependencyTracker::DefaultApi.new
opts = {
  body: DependencyTracker::NotificationRule.new # NotificationRule | 
}

begin
  #Creates a new notification rule
  result = api_instance.create_notification_rule(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling DefaultApi->create_notification_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NotificationRule**](NotificationRule.md)|  | [optional] 

### Return type

[**NotificationRule**](NotificationRule.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_notification_rule

> delete_notification_rule(opts)

Deletes a notification rule

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

api_instance = DependencyTracker::DefaultApi.new
opts = {
  body: DependencyTracker::NotificationRule.new # NotificationRule | 
}

begin
  #Deletes a notification rule
  api_instance.delete_notification_rule(opts)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling DefaultApi->delete_notification_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NotificationRule**](NotificationRule.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_all_notification_publishers

> Array&lt;NotificationPublisher&gt; get_all_notification_publishers

Returns a list of all notification publishers

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

api_instance = DependencyTracker::DefaultApi.new

begin
  #Returns a list of all notification publishers
  result = api_instance.get_all_notification_publishers
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling DefaultApi->get_all_notification_publishers: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;NotificationPublisher&gt;**](NotificationPublisher.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_notification_rules

> Array&lt;NotificationRule&gt; get_all_notification_rules

Returns a list of all notification rules

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

api_instance = DependencyTracker::DefaultApi.new

begin
  #Returns a list of all notification rules
  result = api_instance.get_all_notification_rules
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling DefaultApi->get_all_notification_rules: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;NotificationRule&gt;**](NotificationRule.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_project_from_rule

> NotificationRule remove_project_from_rule(rule_uuid, project_uuid)

Removes a project from a notification rule

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

api_instance = DependencyTracker::DefaultApi.new
rule_uuid = 'rule_uuid_example' # String | The UUID of the rule to remove the project from
project_uuid = 'project_uuid_example' # String | The UUID of the project to remove from the rule

begin
  #Removes a project from a notification rule
  result = api_instance.remove_project_from_rule(rule_uuid, project_uuid)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling DefaultApi->remove_project_from_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_uuid** | **String**| The UUID of the rule to remove the project from | 
 **project_uuid** | **String**| The UUID of the project to remove from the rule | 

### Return type

[**NotificationRule**](NotificationRule.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## test_smtp_publisher_config

> test_smtp_publisher_config(opts)

Dispatches a SMTP notification test

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

api_instance = DependencyTracker::DefaultApi.new
opts = {
  destination: 'destination_example' # String | 
}

begin
  #Dispatches a SMTP notification test
  api_instance.test_smtp_publisher_config(opts)
rescue DependencyTracker::ApiError => e
  puts "Exception when calling DefaultApi->test_smtp_publisher_config: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **destination** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: Not defined


## update_notification_rule

> NotificationRule update_notification_rule(opts)

Updates a notification rule

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

api_instance = DependencyTracker::DefaultApi.new
opts = {
  body: DependencyTracker::NotificationRule.new # NotificationRule | 
}

begin
  #Updates a notification rule
  result = api_instance.update_notification_rule(opts)
  p result
rescue DependencyTracker::ApiError => e
  puts "Exception when calling DefaultApi->update_notification_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NotificationRule**](NotificationRule.md)|  | [optional] 

### Return type

[**NotificationRule**](NotificationRule.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

