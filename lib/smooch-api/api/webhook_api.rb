=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.18

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class WebhookApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Create a webhook for the specified app.
    # @param appId Identifies the app.
    # @param webhookCreateBody Body for a createWebhook request. 
    # @param [Hash] opts the optional parameters
    # @return [WebhookResponse]
    def create_webhook(appId, webhookCreateBody, opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(appId, webhookCreateBody, opts)
      return data
    end

    # 
    # Create a webhook for the specified app.
    # @param appId Identifies the app.
    # @param webhookCreateBody Body for a createWebhook request. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookResponse, Fixnum, Hash)>] WebhookResponse data, response status code and response headers
    def create_webhook_with_http_info(appId, webhookCreateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhookApi.create_webhook ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling WebhookApi.create_webhook"
      end
      # verify the required parameter 'webhookCreateBody' is set
      if @api_client.config.client_side_validation && webhookCreateBody.nil?
        fail ArgumentError, "Missing the required parameter 'webhookCreateBody' when calling WebhookApi.create_webhook"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/webhooks".sub('{' + 'appId' + '}', appId.to_s)

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
      post_body = @api_client.object_to_http_body(webhookCreateBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete the specified webhook.
    # @param appId Identifies the app.
    # @param webhookId Identifies the webhook.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhook(appId, webhookId, opts = {})
      delete_webhook_with_http_info(appId, webhookId, opts)
      return nil
    end

    # 
    # Delete the specified webhook.
    # @param appId Identifies the app.
    # @param webhookId Identifies the webhook.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_webhook_with_http_info(appId, webhookId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhookApi.delete_webhook ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling WebhookApi.delete_webhook"
      end
      # verify the required parameter 'webhookId' is set
      if @api_client.config.client_side_validation && webhookId.nil?
        fail ArgumentError, "Missing the required parameter 'webhookId' when calling WebhookApi.delete_webhook"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/webhooks/{webhookId}".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'webhookId' + '}', webhookId.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified webhook.
    # @param appId Identifies the app.
    # @param webhookId Identifies the webhook.
    # @param [Hash] opts the optional parameters
    # @return [WebhookResponse]
    def get_webhook(appId, webhookId, opts = {})
      data, _status_code, _headers = get_webhook_with_http_info(appId, webhookId, opts)
      return data
    end

    # 
    # Get the specified webhook.
    # @param appId Identifies the app.
    # @param webhookId Identifies the webhook.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookResponse, Fixnum, Hash)>] WebhookResponse data, response status code and response headers
    def get_webhook_with_http_info(appId, webhookId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhookApi.get_webhook ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling WebhookApi.get_webhook"
      end
      # verify the required parameter 'webhookId' is set
      if @api_client.config.client_side_validation && webhookId.nil?
        fail ArgumentError, "Missing the required parameter 'webhookId' when calling WebhookApi.get_webhook"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/webhooks/{webhookId}".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'webhookId' + '}', webhookId.to_s)

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
        :return_type => 'WebhookResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#get_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # List webhooks for the specified app.
    # @param appId Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [ListWebhooksResponse]
    def list_webhooks(appId, opts = {})
      data, _status_code, _headers = list_webhooks_with_http_info(appId, opts)
      return data
    end

    # 
    # List webhooks for the specified app.
    # @param appId Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListWebhooksResponse, Fixnum, Hash)>] ListWebhooksResponse data, response status code and response headers
    def list_webhooks_with_http_info(appId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhookApi.list_webhooks ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling WebhookApi.list_webhooks"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/webhooks".sub('{' + 'appId' + '}', appId.to_s)

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
        :return_type => 'ListWebhooksResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#list_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update the specified webhook.
    # @param appId Identifies the app.
    # @param webhookId Identifies the webhook.
    # @param webhookUpdateBody Body for an updateWebhook request. 
    # @param [Hash] opts the optional parameters
    # @return [WebhookResponse]
    def update_webhook(appId, webhookId, webhookUpdateBody, opts = {})
      data, _status_code, _headers = update_webhook_with_http_info(appId, webhookId, webhookUpdateBody, opts)
      return data
    end

    # 
    # Update the specified webhook.
    # @param appId Identifies the app.
    # @param webhookId Identifies the webhook.
    # @param webhookUpdateBody Body for an updateWebhook request. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookResponse, Fixnum, Hash)>] WebhookResponse data, response status code and response headers
    def update_webhook_with_http_info(appId, webhookId, webhookUpdateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhookApi.update_webhook ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling WebhookApi.update_webhook"
      end
      # verify the required parameter 'webhookId' is set
      if @api_client.config.client_side_validation && webhookId.nil?
        fail ArgumentError, "Missing the required parameter 'webhookId' when calling WebhookApi.update_webhook"
      end
      # verify the required parameter 'webhookUpdateBody' is set
      if @api_client.config.client_side_validation && webhookUpdateBody.nil?
        fail ArgumentError, "Missing the required parameter 'webhookUpdateBody' when calling WebhookApi.update_webhook"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/webhooks/{webhookId}".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'webhookId' + '}', webhookId.to_s)

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
      post_body = @api_client.object_to_http_body(webhookUpdateBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#update_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
