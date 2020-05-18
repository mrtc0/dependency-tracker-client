=begin
#Dependency-Track API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 3.8.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module DependencyTracker
  class BadgeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns current metrics for a specific project
    # @param name [String] The name of the project to query on
    # @param version [String] The version of the project to query on
    # @param [Hash] opts the optional parameters
    # @return [ProjectMetrics]
    def get_project_vulnerabilities_badge(name, version, opts = {})
      data, _status_code, _headers = get_project_vulnerabilities_badge_with_http_info(name, version, opts)
      data
    end

    # Returns current metrics for a specific project
    # @param name [String] The name of the project to query on
    # @param version [String] The version of the project to query on
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProjectMetrics, Integer, Hash)>] ProjectMetrics data, response status code and response headers
    def get_project_vulnerabilities_badge_with_http_info(name, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BadgeApi.get_project_vulnerabilities_badge ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling BadgeApi.get_project_vulnerabilities_badge"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling BadgeApi.get_project_vulnerabilities_badge"
      end
      # resource path
      local_var_path = '/v1/badge/vulns/project/{name}/{version}'.sub('{' + 'name' + '}', CGI.escape(name.to_s)).sub('{' + 'version' + '}', CGI.escape(version.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/svg+xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ProjectMetrics' 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: BadgeApi#get_project_vulnerabilities_badge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns current metrics for a specific project
    # @param uuid [String] The UUID of the project to retrieve metrics for
    # @param [Hash] opts the optional parameters
    # @return [ProjectMetrics]
    def get_project_vulnerabilities_badge1(uuid, opts = {})
      data, _status_code, _headers = get_project_vulnerabilities_badge1_with_http_info(uuid, opts)
      data
    end

    # Returns current metrics for a specific project
    # @param uuid [String] The UUID of the project to retrieve metrics for
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProjectMetrics, Integer, Hash)>] ProjectMetrics data, response status code and response headers
    def get_project_vulnerabilities_badge1_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BadgeApi.get_project_vulnerabilities_badge1 ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling BadgeApi.get_project_vulnerabilities_badge1"
      end
      # resource path
      local_var_path = '/v1/badge/vulns/project/{uuid}'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/svg+xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ProjectMetrics' 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: BadgeApi#get_project_vulnerabilities_badge1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
