=begin
#Sunshine Conversations API

The version of the OpenAPI document: 9.4.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'cgi'

module SunshineConversationsClient
  class ClientsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Client
    # Create a client and link it to a channel specified by the matchCriteria.type.
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param client_create [ClientCreate] 
    # @param [Hash] opts the optional parameters
    # @return [ClientResponse]
    def create_client(app_id, user_id_or_external_id, client_create, opts = {})
      data, _status_code, _headers = create_client_with_http_info(app_id, user_id_or_external_id, client_create, opts)
      data
    end

    # Create Client
    # Create a client and link it to a channel specified by the matchCriteria.type.
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param client_create [ClientCreate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientResponse, Integer, Hash)>] ClientResponse data, response status code and response headers
    def create_client_with_http_info(app_id, user_id_or_external_id, client_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientsApi.create_client ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ClientsApi.create_client"
      end
      # verify the required parameter 'user_id_or_external_id' is set
      if @api_client.config.client_side_validation && user_id_or_external_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id_or_external_id' when calling ClientsApi.create_client"
      end
      # verify the required parameter 'client_create' is set
      if @api_client.config.client_side_validation && client_create.nil?
        fail ArgumentError, "Missing the required parameter 'client_create' when calling ClientsApi.create_client"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/users/{userIdOrExternalId}/clients'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'userIdOrExternalId' + '}', CGI.escape(user_id_or_external_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(client_create) 

      # return_type
      return_type = opts[:return_type] || 'ClientResponse' 

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
        @api_client.config.logger.debug "API called: ClientsApi#create_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Clients
    # Get all the clients for a particular user, including both linked clients and pending clients. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits).  ```shell /v2/apps/:appId/users/:userId/clients?page[after]=5ebee0975ac5304b664a12fa ``` 
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param [Hash] opts the optional parameters
    # @option opts [Page] :page Contains parameters for applying cursor pagination.
    # @return [ClientListResponse]
    def list_clients(app_id, user_id_or_external_id, opts = {})
      data, _status_code, _headers = list_clients_with_http_info(app_id, user_id_or_external_id, opts)
      data
    end

    # List Clients
    # Get all the clients for a particular user, including both linked clients and pending clients. This API is paginated through [cursor pagination](#section/Introduction/API-pagination-and-records-limits).  &#x60;&#x60;&#x60;shell /v2/apps/:appId/users/:userId/clients?page[after]&#x3D;5ebee0975ac5304b664a12fa &#x60;&#x60;&#x60; 
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param [Hash] opts the optional parameters
    # @option opts [Page] :page Contains parameters for applying cursor pagination.
    # @return [Array<(ClientListResponse, Integer, Hash)>] ClientListResponse data, response status code and response headers
    def list_clients_with_http_info(app_id, user_id_or_external_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientsApi.list_clients ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ClientsApi.list_clients"
      end
      # verify the required parameter 'user_id_or_external_id' is set
      if @api_client.config.client_side_validation && user_id_or_external_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id_or_external_id' when calling ClientsApi.list_clients"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/users/{userIdOrExternalId}/clients'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'userIdOrExternalId' + '}', CGI.escape(user_id_or_external_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ClientListResponse' 

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
        @api_client.config.logger.debug "API called: ClientsApi#list_clients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove Client
    # Remove a particular client and unsubscribe it from all connected conversations.
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param client_id [String] The client&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def remove_client(app_id, user_id_or_external_id, client_id, opts = {})
      data, _status_code, _headers = remove_client_with_http_info(app_id, user_id_or_external_id, client_id, opts)
      data
    end

    # Remove Client
    # Remove a particular client and unsubscribe it from all connected conversations.
    # @param app_id [String] Identifies the app.
    # @param user_id_or_external_id [String] The user&#39;s id or externalId.
    # @param client_id [String] The client&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def remove_client_with_http_info(app_id, user_id_or_external_id, client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientsApi.remove_client ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ClientsApi.remove_client"
      end
      # verify the required parameter 'user_id_or_external_id' is set
      if @api_client.config.client_side_validation && user_id_or_external_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id_or_external_id' when calling ClientsApi.remove_client"
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling ClientsApi.remove_client"
      end
      # resource path
      local_var_path = '/v2/apps/{appId}/users/{userIdOrExternalId}/clients/{clientId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'userIdOrExternalId' + '}', CGI.escape(user_id_or_external_id.to_s)).sub('{' + 'clientId' + '}', CGI.escape(client_id.to_s))

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
        @api_client.config.logger.debug "API called: ClientsApi#remove_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
