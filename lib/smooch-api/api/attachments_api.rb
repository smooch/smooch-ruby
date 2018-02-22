=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 2.10

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class AttachmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Upload an attachment to Smooch to use in future messages.
    # @param app_id Identifies the app.
    # @param source File to be uploaded
    # @param access Access level for the resulting file
    # @param [Hash] opts the optional parameters
    # @return [AttachmentResponse]
    def upload_attachment(app_id, source, access, opts = {})
      data, _status_code, _headers = upload_attachment_with_http_info(app_id, source, access, opts)
      return data
    end

    # 
    # Upload an attachment to Smooch to use in future messages.
    # @param app_id Identifies the app.
    # @param source File to be uploaded
    # @param access Access level for the resulting file
    # @param [Hash] opts the optional parameters
    # @return [Array<(AttachmentResponse, Fixnum, Hash)>] AttachmentResponse data, response status code and response headers
    def upload_attachment_with_http_info(app_id, source, access, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AttachmentsApi.upload_attachment ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AttachmentsApi.upload_attachment"
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling AttachmentsApi.upload_attachment"
      end
      # verify the required parameter 'access' is set
      if @api_client.config.client_side_validation && access.nil?
        fail ArgumentError, "Missing the required parameter 'access' when calling AttachmentsApi.upload_attachment"
      end
      # resource path
      local_var_path = "/apps/{appId}/attachments".sub('{' + 'appId' + '}', app_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'access'] = access

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["source"] = source

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AttachmentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentsApi#upload_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
