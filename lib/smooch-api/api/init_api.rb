=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 1.9

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class InitApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # This API is called by an iOS, Android, or browser client when the app is first loaded. It serves a number of purposes. 1. Initializes a new *appUser* and *client* if they don’t yet exist. 2. Updates an existing app user’s profile and client information. 3. Authenticates the *appUser* if *jwt* credentials are provided. 
    # @param init_body Body for an init request.
    # @param [Hash] opts the optional parameters
    # @return [InitResponse]
    def init(init_body, opts = {})
      data, _status_code, _headers = init_with_http_info(init_body, opts)
      return data
    end

    # 
    # This API is called by an iOS, Android, or browser client when the app is first loaded. It serves a number of purposes. 1. Initializes a new *appUser* and *client* if they don’t yet exist. 2. Updates an existing app user’s profile and client information. 3. Authenticates the *appUser* if *jwt* credentials are provided. 
    # @param init_body Body for an init request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InitResponse, Fixnum, Hash)>] InitResponse data, response status code and response headers
    def init_with_http_info(init_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InitApi.init ..."
      end
      # verify the required parameter 'init_body' is set
      if @api_client.config.client_side_validation && init_body.nil?
        fail ArgumentError, "Missing the required parameter 'init_body' when calling InitApi.init"
      end
      # resource path
      local_var_path = "/init"

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
      post_body = @api_client.object_to_http_body(init_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InitResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InitApi#init\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
