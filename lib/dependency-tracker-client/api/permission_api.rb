=begin
#Dependency-Track API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 3.8.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module DependencyTracker
  class PermissionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Adds the permission to the specified username.
    # Requires 'manage users' permission.
    # @param uuid [String] A valid team uuid
    # @param permission [String] A valid permission
    # @param [Hash] opts the optional parameters
    # @return [Team]
    def add_permission_to_team(uuid, permission, opts = {})
      data, _status_code, _headers = add_permission_to_team_with_http_info(uuid, permission, opts)
      data
    end

    # Adds the permission to the specified username.
    # Requires &#39;manage users&#39; permission.
    # @param uuid [String] A valid team uuid
    # @param permission [String] A valid permission
    # @param [Hash] opts the optional parameters
    # @return [Array<(Team, Integer, Hash)>] Team data, response status code and response headers
    def add_permission_to_team_with_http_info(uuid, permission, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionApi.add_permission_to_team ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling PermissionApi.add_permission_to_team"
      end
      # verify the required parameter 'permission' is set
      if @api_client.config.client_side_validation && permission.nil?
        fail ArgumentError, "Missing the required parameter 'permission' when calling PermissionApi.add_permission_to_team"
      end
      # resource path
      local_var_path = '/v1/permission/{permission}/team/{uuid}'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s)).sub('{' + 'permission' + '}', CGI.escape(permission.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Team' 

      # auth_names
      auth_names = opts[:auth_names] || ['X-Api-Key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionApi#add_permission_to_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds the permission to the specified username.
    # @param username [String] A valid username
    # @param permission [String] A valid permission
    # @param [Hash] opts the optional parameters
    # @return [UserPrincipal]
    def add_permission_to_user(username, permission, opts = {})
      data, _status_code, _headers = add_permission_to_user_with_http_info(username, permission, opts)
      data
    end

    # Adds the permission to the specified username.
    # @param username [String] A valid username
    # @param permission [String] A valid permission
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserPrincipal, Integer, Hash)>] UserPrincipal data, response status code and response headers
    def add_permission_to_user_with_http_info(username, permission, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionApi.add_permission_to_user ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling PermissionApi.add_permission_to_user"
      end
      # verify the required parameter 'permission' is set
      if @api_client.config.client_side_validation && permission.nil?
        fail ArgumentError, "Missing the required parameter 'permission' when calling PermissionApi.add_permission_to_user"
      end
      # resource path
      local_var_path = '/v1/permission/{permission}/user/{username}'.sub('{' + 'username' + '}', CGI.escape(username.to_s)).sub('{' + 'permission' + '}', CGI.escape(permission.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'UserPrincipal' 

      # auth_names
      auth_names = opts[:auth_names] || ['X-Api-Key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionApi#add_permission_to_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of all permissions
    # @param [Hash] opts the optional parameters
    # @return [Array<Permission>]
    def get_all_permissions(opts = {})
      data, _status_code, _headers = get_all_permissions_with_http_info(opts)
      data
    end

    # Returns a list of all permissions
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Permission>, Integer, Hash)>] Array<Permission> data, response status code and response headers
    def get_all_permissions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionApi.get_all_permissions ...'
      end
      # resource path
      local_var_path = '/v1/permission'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<Permission>' 

      # auth_names
      auth_names = opts[:auth_names] || ['X-Api-Key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionApi#get_all_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes the permission from the team.
    # @param uuid [String] A valid team uuid
    # @param permission [String] A valid permission
    # @param [Hash] opts the optional parameters
    # @return [Team]
    def remove_permission_from_team(uuid, permission, opts = {})
      data, _status_code, _headers = remove_permission_from_team_with_http_info(uuid, permission, opts)
      data
    end

    # Removes the permission from the team.
    # @param uuid [String] A valid team uuid
    # @param permission [String] A valid permission
    # @param [Hash] opts the optional parameters
    # @return [Array<(Team, Integer, Hash)>] Team data, response status code and response headers
    def remove_permission_from_team_with_http_info(uuid, permission, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionApi.remove_permission_from_team ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling PermissionApi.remove_permission_from_team"
      end
      # verify the required parameter 'permission' is set
      if @api_client.config.client_side_validation && permission.nil?
        fail ArgumentError, "Missing the required parameter 'permission' when calling PermissionApi.remove_permission_from_team"
      end
      # resource path
      local_var_path = '/v1/permission/{permission}/team/{uuid}'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s)).sub('{' + 'permission' + '}', CGI.escape(permission.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Team' 

      # auth_names
      auth_names = opts[:auth_names] || ['X-Api-Key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionApi#remove_permission_from_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes the permission from the user.
    # @param username [String] A valid username
    # @param permission [String] A valid permission
    # @param [Hash] opts the optional parameters
    # @return [UserPrincipal]
    def remove_permission_from_user(username, permission, opts = {})
      data, _status_code, _headers = remove_permission_from_user_with_http_info(username, permission, opts)
      data
    end

    # Removes the permission from the user.
    # @param username [String] A valid username
    # @param permission [String] A valid permission
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserPrincipal, Integer, Hash)>] UserPrincipal data, response status code and response headers
    def remove_permission_from_user_with_http_info(username, permission, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionApi.remove_permission_from_user ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling PermissionApi.remove_permission_from_user"
      end
      # verify the required parameter 'permission' is set
      if @api_client.config.client_side_validation && permission.nil?
        fail ArgumentError, "Missing the required parameter 'permission' when calling PermissionApi.remove_permission_from_user"
      end
      # resource path
      local_var_path = '/v1/permission/{permission}/user/{username}'.sub('{' + 'username' + '}', CGI.escape(username.to_s)).sub('{' + 'permission' + '}', CGI.escape(permission.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'UserPrincipal' 

      # auth_names
      auth_names = opts[:auth_names] || ['X-Api-Key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionApi#remove_permission_from_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
