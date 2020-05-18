=begin
#Dependency-Track API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 3.8.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module DependencyTracker
  class SearchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Processes and returns search results
    # Use of this endpoint may lead to URL encoding/decoding issues and is not recommended
    # @param query [String] 
    # @param [Hash] opts the optional parameters
    # @return [SearchResult]
    def search(query, opts = {})
      data, _status_code, _headers = search_with_http_info(query, opts)
      data
    end

    # Processes and returns search results
    # Use of this endpoint may lead to URL encoding/decoding issues and is not recommended
    # @param query [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SearchResult, Integer, Hash)>] SearchResult data, response status code and response headers
    def search_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SearchApi.search ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling SearchApi.search"
      end
      # resource path
      local_var_path = '/v1/search/{query}'.sub('{' + 'query' + '}', CGI.escape(query.to_s))

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
      return_type = opts[:return_type] || 'SearchResult' 

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
        @api_client.config.logger.debug "API called: SearchApi#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Processes and returns search results
    # Preferred search endpoint
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query 
    # @return [SearchResult]
    def search_via_query_string(opts = {})
      data, _status_code, _headers = search_via_query_string_with_http_info(opts)
      data
    end

    # Processes and returns search results
    # Preferred search endpoint
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query 
    # @return [Array<(SearchResult, Integer, Hash)>] SearchResult data, response status code and response headers
    def search_via_query_string_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SearchApi.search_via_query_string ...'
      end
      # resource path
      local_var_path = '/v1/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'SearchResult' 

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
        @api_client.config.logger.debug "API called: SearchApi#search_via_query_string\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end