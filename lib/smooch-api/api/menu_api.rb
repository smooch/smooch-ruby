=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.27

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class MenuApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Remove the specified app’s menu.
    # @param appId Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [MenuResponse]
    def delete_menu(appId, opts = {})
      data, _status_code, _headers = delete_menu_with_http_info(appId, opts)
      return data
    end

    # 
    # Remove the specified app’s menu.
    # @param appId Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MenuResponse, Fixnum, Hash)>] MenuResponse data, response status code and response headers
    def delete_menu_with_http_info(appId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MenuApi.delete_menu ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling MenuApi.delete_menu"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/menu".sub('{' + 'appId' + '}', appId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MenuResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuApi#delete_menu\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified app’s menu.
    # @param appId Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [MenuResponse]
    def get_menu(appId, opts = {})
      data, _status_code, _headers = get_menu_with_http_info(appId, opts)
      return data
    end

    # 
    # Get the specified app’s menu.
    # @param appId Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MenuResponse, Fixnum, Hash)>] MenuResponse data, response status code and response headers
    def get_menu_with_http_info(appId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MenuApi.get_menu ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling MenuApi.get_menu"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/menu".sub('{' + 'appId' + '}', appId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MenuResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuApi#get_menu\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Configure the specified app’s menu.
    # @param appId Identifies the app.
    # @param menuUpdateBody Body for a updateMenu request.
    # @param [Hash] opts the optional parameters
    # @return [MenuResponse]
    def update_menu(appId, menuUpdateBody, opts = {})
      data, _status_code, _headers = update_menu_with_http_info(appId, menuUpdateBody, opts)
      return data
    end

    # 
    # Configure the specified app’s menu.
    # @param appId Identifies the app.
    # @param menuUpdateBody Body for a updateMenu request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MenuResponse, Fixnum, Hash)>] MenuResponse data, response status code and response headers
    def update_menu_with_http_info(appId, menuUpdateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MenuApi.update_menu ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling MenuApi.update_menu"
      end
      # verify the required parameter 'menuUpdateBody' is set
      if @api_client.config.client_side_validation && menuUpdateBody.nil?
        fail ArgumentError, "Missing the required parameter 'menuUpdateBody' when calling MenuApi.update_menu"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/menu".sub('{' + 'appId' + '}', appId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(menuUpdateBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MenuResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuApi#update_menu\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
