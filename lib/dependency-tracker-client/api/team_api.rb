=begin
#Dependency-Track API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 3.8.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module DependencyTracker
  class TeamApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new team along with an associated API key
    # @param [Hash] opts the optional parameters
    # @option opts [Team] :body 
    # @return [Team]
    def create_team(opts = {})
      data, _status_code, _headers = create_team_with_http_info(opts)
      data
    end

    # Creates a new team along with an associated API key
    # @param [Hash] opts the optional parameters
    # @option opts [Team] :body 
    # @return [Array<(Team, Integer, Hash)>] Team data, response status code and response headers
    def create_team_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.create_team ...'
      end
      # resource path
      local_var_path = '/v1/team'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamApi#create_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes the specified API key
    # @param apikey [String] The API key to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_api_key(apikey, opts = {})
      delete_api_key_with_http_info(apikey, opts)
      nil
    end

    # Deletes the specified API key
    # @param apikey [String] The API key to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_api_key_with_http_info(apikey, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.delete_api_key ...'
      end
      # verify the required parameter 'apikey' is set
      if @api_client.config.client_side_validation && apikey.nil?
        fail ArgumentError, "Missing the required parameter 'apikey' when calling TeamApi.delete_api_key"
      end
      # resource path
      local_var_path = '/v1/team/key/{apikey}'.sub('{' + 'apikey' + '}', CGI.escape(apikey.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

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
        @api_client.config.logger.debug "API called: TeamApi#delete_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a team
    # @param [Hash] opts the optional parameters
    # @option opts [Team] :body 
    # @return [nil]
    def delete_team(opts = {})
      delete_team_with_http_info(opts)
      nil
    end

    # Deletes a team
    # @param [Hash] opts the optional parameters
    # @option opts [Team] :body 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_team_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.delete_team ...'
      end
      # resource path
      local_var_path = '/v1/team'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] 

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
        @api_client.config.logger.debug "API called: TeamApi#delete_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generates an API key and returns its value
    # @param uuid [String] The UUID of the team to generate a key for
    # @param [Hash] opts the optional parameters
    # @return [ApiKey]
    def generate_api_key(uuid, opts = {})
      data, _status_code, _headers = generate_api_key_with_http_info(uuid, opts)
      data
    end

    # Generates an API key and returns its value
    # @param uuid [String] The UUID of the team to generate a key for
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiKey, Integer, Hash)>] ApiKey data, response status code and response headers
    def generate_api_key_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.generate_api_key ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling TeamApi.generate_api_key"
      end
      # resource path
      local_var_path = '/v1/team/{uuid}/key'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      return_type = opts[:return_type] || 'ApiKey' 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamApi#generate_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a specific team
    # @param uuid [String] The UUID of the team to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Team]
    def get_team(uuid, opts = {})
      data, _status_code, _headers = get_team_with_http_info(uuid, opts)
      data
    end

    # Returns a specific team
    # @param uuid [String] The UUID of the team to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<(Team, Integer, Hash)>] Team data, response status code and response headers
    def get_team_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.get_team ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling TeamApi.get_team"
      end
      # resource path
      local_var_path = '/v1/team/{uuid}'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamApi#get_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of all teams
    # @param [Hash] opts the optional parameters
    # @return [Array<Team>]
    def get_teams(opts = {})
      data, _status_code, _headers = get_teams_with_http_info(opts)
      data
    end

    # Returns a list of all teams
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Team>, Integer, Hash)>] Array<Team> data, response status code and response headers
    def get_teams_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.get_teams ...'
      end
      # resource path
      local_var_path = '/v1/team'

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
      return_type = opts[:return_type] || 'Array<Team>' 

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
        @api_client.config.logger.debug "API called: TeamApi#get_teams\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Regenerates an API key by removing the specified key, generating a new one and returning its value
    # @param apikey [String] The API key to regenerate
    # @param [Hash] opts the optional parameters
    # @return [ApiKey]
    def regenerate_api_key(apikey, opts = {})
      data, _status_code, _headers = regenerate_api_key_with_http_info(apikey, opts)
      data
    end

    # Regenerates an API key by removing the specified key, generating a new one and returning its value
    # @param apikey [String] The API key to regenerate
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiKey, Integer, Hash)>] ApiKey data, response status code and response headers
    def regenerate_api_key_with_http_info(apikey, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.regenerate_api_key ...'
      end
      # verify the required parameter 'apikey' is set
      if @api_client.config.client_side_validation && apikey.nil?
        fail ArgumentError, "Missing the required parameter 'apikey' when calling TeamApi.regenerate_api_key"
      end
      # resource path
      local_var_path = '/v1/team/key/{apikey}'.sub('{' + 'apikey' + '}', CGI.escape(apikey.to_s))

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
      return_type = opts[:return_type] || 'ApiKey' 

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
        @api_client.config.logger.debug "API called: TeamApi#regenerate_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a team's fields including
    # @param [Hash] opts the optional parameters
    # @option opts [Team] :body 
    # @return [Team]
    def update_team(opts = {})
      data, _status_code, _headers = update_team_with_http_info(opts)
      data
    end

    # Updates a team&#39;s fields including
    # @param [Hash] opts the optional parameters
    # @option opts [Team] :body 
    # @return [Array<(Team, Integer, Hash)>] Team data, response status code and response headers
    def update_team_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.update_team ...'
      end
      # resource path
      local_var_path = '/v1/team'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

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
        @api_client.config.logger.debug "API called: TeamApi#update_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
