=begin
#Sunshine Conversations API

The version of the OpenAPI document: 9.4.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class AppsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create App
    # Creates a new app. When using [service account](#service-accounts) credentials, the service account is automatically granted access to the app.
    # @param app_create_body [AppCreateBody] 
    # @param [Hash] opts the optional parameters
    # @return [AppResponse]
    def create_app(app_create_body, opts = {})
      data, _status_code, _headers = create_app_with_http_info(app_create_body, opts)
      data
    end

    # Create App
    # Creates a new app. When using [service account](#service-accounts) credentials, the service account is automatically granted access to the app.
    # @param app_create_body [AppCreateBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppResponse, Integer, Hash)>] AppResponse data, response status code and response headers
    def create_app_with_http_info(app_create_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.create_app ...'
      end
      # verify the required parameter 'app_create_body' is set
      if @api_client.config.client_side_validation && app_create_body.nil?
        fail ArgumentError, "Missing the required parameter 'app_create_body' when calling AppsApi.create_app"
      end
      # resource path
      local_var_path = '/v2/apps'

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
      post_body = opts[:body] || @api_client.object_to_http_body(app_create_body) 

      # return_type
      return_type = opts[:return_type] || 'AppResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

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
        @api_client.config.logger.debug "API called: AppsApi#create_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete App
    # Removes the specified app, including all its enabled integrations.
    # @param app_id [String] Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_app(app_id, opts = {})
      data, _status_code, _headers = delete_app_with_http_info(app_id, opts)
      data
    end

    # Delete App
    # Removes the specified app, including all its enabled integrations.
    # @param app_id [String] Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_app_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.delete_app ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppsApi.delete_app"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

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
        @api_client.config.logger.debug "API called: AppsApi#delete_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get App
    # Fetches an individual app.
    # @param app_id [String] Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [AppResponse]
    def get_app(app_id, opts = {})
      data, _status_code, _headers = get_app_with_http_info(app_id, opts)
      data
    end

    # Get App
    # Fetches an individual app.
    # @param app_id [String] Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppResponse, Integer, Hash)>] AppResponse data, response status code and response headers
    def get_app_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.get_app ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppsApi.get_app"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
      return_type = opts[:return_type] || 'AppResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

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
        @api_client.config.logger.debug "API called: AppsApi#get_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Apps
    # Lists all apps that a user is part of. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits).  ```shell /v2/apps?page[after]=5e1606762556d93e9c176f69&page[size]=10 ``` 
    # @param [Hash] opts the optional parameters
    # @option opts [Page] :page Contains parameters for applying cursor pagination.
    # @option opts [AppListFilter] :filter Contains parameters for filtering the results.
    # @return [AppListResponse]
    def list_apps(opts = {})
      data, _status_code, _headers = list_apps_with_http_info(opts)
      data
    end

    # List Apps
    # Lists all apps that a user is part of. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits).  &#x60;&#x60;&#x60;shell /v2/apps?page[after]&#x3D;5e1606762556d93e9c176f69&amp;page[size]&#x3D;10 &#x60;&#x60;&#x60; 
    # @param [Hash] opts the optional parameters
    # @option opts [Page] :page Contains parameters for applying cursor pagination.
    # @option opts [AppListFilter] :filter Contains parameters for filtering the results.
    # @return [Array<(AppListResponse, Integer, Hash)>] AppListResponse data, response status code and response headers
    def list_apps_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.list_apps ...'
      end
      # resource path
      local_var_path = '/v2/apps'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'AppListResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

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
        @api_client.config.logger.debug "API called: AppsApi#list_apps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update App
    # Updates an app.
    # @param app_id [String] Identifies the app.
    # @param app_update_body [AppUpdateBody] 
    # @param [Hash] opts the optional parameters
    # @return [AppResponse]
    def update_app(app_id, app_update_body, opts = {})
      data, _status_code, _headers = update_app_with_http_info(app_id, app_update_body, opts)
      data
    end

    # Update App
    # Updates an app.
    # @param app_id [String] Identifies the app.
    # @param app_update_body [AppUpdateBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppResponse, Integer, Hash)>] AppResponse data, response status code and response headers
    def update_app_with_http_info(app_id, app_update_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.update_app ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AppsApi.update_app"
      end
      # verify the required parameter 'app_update_body' is set
      if @api_client.config.client_side_validation && app_update_body.nil?
        fail ArgumentError, "Missing the required parameter 'app_update_body' when calling AppsApi.update_app"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(app_update_body) 

      # return_type
      return_type = opts[:return_type] || 'AppResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'bearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppsApi#update_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
