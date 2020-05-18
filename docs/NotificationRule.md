# DependencyTracker::NotificationRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**enabled** | **Boolean** |  | [optional] 
**scope** | **String** |  | 
**notification_level** | **String** |  | [optional] 
**projects** | [**Array&lt;Project&gt;**](Project.md) |  | [optional] 
**notify_on** | **Array&lt;String&gt;** |  | [optional] 
**message** | **String** |  | [optional] 
**publisher** | [**NotificationPublisher**](NotificationPublisher.md) |  | [optional] 
**publisher_config** | **String** |  | [optional] 
**uuid** | **String** |  | 

## Code Sample

```ruby
require 'DependencyTracker'

instance = DependencyTracker::NotificationRule.new(name: null,
                                 enabled: null,
                                 scope: null,
                                 notification_level: null,
                                 projects: null,
                                 notify_on: null,
                                 message: null,
                                 publisher: null,
                                 publisher_config: null,
                                 uuid: null)
```


