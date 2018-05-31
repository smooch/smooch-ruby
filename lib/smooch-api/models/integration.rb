=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 3.8

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module SmoochApi

  class Integration
    # The integration ID, generated automatically.
    attr_accessor :_id

    # The integration type.
    attr_accessor :type

    # Facebook Page Access Token. Required for *messenger* integrations. 
    attr_accessor :page_access_token

    # Facebook App ID OR WeChat App ID. Required for *messenger* and *wechat* integrations. 
    attr_accessor :app_id

    # Facebook Page App Secret OR WeChat App Secret. Required for *messenger* and *wechat* integrations. 
    attr_accessor :app_secret

    # Secret to verify webhooks. Returned on successful *wechat* and *messagebird* integrations. 
    attr_accessor :webhook_secret

    # Facebook Page App ID. Returned on successful *messenger* integrations. 
    attr_accessor :page_id

    # Twilio Account SID. Required for *twilio* integrations. 
    attr_accessor :account_sid

    # Twilio Auth Token. Required for *twilio* integrations. 
    attr_accessor :auth_token

    # SID for specific phone number. Required for *twilio* integrations. 
    attr_accessor :phone_number_sid

    # Smooch will receive all messages sent to this phone number. Returned on successful *twilio* integrations. 
    attr_accessor :phone_number

    # Name on the account. Returned on successful *twilio* integrations. 
    attr_accessor :name

    # Telegram Bot Token OR Viber Public Account token. Required for *twilio* and *viber* integrations. 
    attr_accessor :token

    # The viber URI to find the account. Returned on successful *viber* integrations. 
    attr_accessor :uri

    # LINE Channel ID. Required for *line* integrations. 
    attr_accessor :channel_id

    # LINE Channel Secret. Required for *line* integrations. 
    attr_accessor :channel_secret

    # LINE Channel Access Token. Required for *line* integrations. 
    attr_accessor :channel_access_token

    # The bot's name. Returned on successful *line* integrations. 
    attr_accessor :bot_name

    # AES Encoding Key. (Optional) Used for *wechat* integrations. 
    attr_accessor :encoding_aes_key

    # Email will display as coming from this address. (Optional) Used for *frontendEmail* integrations. 
    attr_accessor :from_address

    # The binary of your APN certificate base64 encoded. Required for *apn* integrations. 
    attr_accessor :certificate

    # The password for your APN certificate. (Optional) Used for *apn* integrations. 
    attr_accessor :password

    # Use the unread count of the conversation as the application badge. (Optional) Used for *apn* integrations. 
    attr_accessor :auto_update_badge

    # Flag specifying whether the certificate is production. Returned on successful *apn* integrations. 
    attr_accessor :production

    # Your server key from the fcm console. Required for *fcm* integrations. 
    attr_accessor :server_key

    # Your sender id from the fcm console. Required for *fcm* integrations. 
    attr_accessor :sender_id

    # The consumer key for your Twitter app. Required for *twitter* integrations. 
    attr_accessor :consumer_key

    # The consumer secret for your Twitter app. Required for *twitter* integrations. 
    attr_accessor :consumer_secret

    # The access token key obtained from your user via oauth. Required for *twitter* integrations. 
    attr_accessor :access_token_key

    # The access token secret obtained from your user via oauth. Required for *twitter* integrations. 
    attr_accessor :access_token_secret

    # The twitter userId. Returned on successful *twitter* integrations. 
    attr_accessor :user_id

    # The username for the account. Returned on successful *twitter* and *telegram* integrations. 
    attr_accessor :username

    # The public API key of your Mailgun account. Required for *mailgun* integrations. 
    attr_accessor :api_key

    # The domain used to relay email. Required for *mailgun* integrations. 
    attr_accessor :domain

    # Smooch will receive all emails sent to this address. Required for *mailgun* integrations. 
    attr_accessor :incoming_address

    # The public API key of your MessageBird account. Required for *messagebird* integrations. 
    attr_accessor :access_key

    # Smooch will receive all messages sent to this phone number. Required for *messagebird* integrations. 
    attr_accessor :originator

    # This color will be used in the messenger header and the button or tab in idle state. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :brand_color

    # When `true`, the introduction pane will be pinned at the top of the conversation instead of scrolling with it. The default value is `false`. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :fixed_intro_pane

    # This color will be used for customer messages, quick replies and actions in the footer. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :conversation_color

    # This color will be used for call-to-actions inside your messages. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :action_color

    # Choose how the messenger will appear on your website. Must be either button or tab. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :display_style

    # With the button style Web Messenger, you have the option of selecting your own button icon. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :button_icon_url

    # With the button style Web Messenger, you have the option of specifying its width. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :button_width

    # With the button style Web Messenger, you have the option of specifying its height. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :button_height

    # Array of integration IDs, order will be reflected in the Web Messenger. When set, only integrations from this list will be displayed in the Web Messenger. If unset, all integrations will be displayed (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :integration_order

    # A custom business name for the Web Messenger. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :business_name

    # A custom business icon url for the Web Messenger. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :business_icon_url

    # A custom background url for the Web Messenger. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :background_image_url

    # A list of origins to whitelist. When set, only the origins from this list will be able to initialize the Web Messenger. If unset, all origins are whitelisted. The elements in the list should follow the serialized-origin format from RFC 6454 `scheme \"://\" host [ \":\" port ]`, where scheme is `http` or `https`. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :origin_whitelist


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_id' => :'_id',
        :'type' => :'type',
        :'page_access_token' => :'pageAccessToken',
        :'app_id' => :'appId',
        :'app_secret' => :'appSecret',
        :'webhook_secret' => :'webhookSecret',
        :'page_id' => :'pageId',
        :'account_sid' => :'accountSid',
        :'auth_token' => :'authToken',
        :'phone_number_sid' => :'phoneNumberSid',
        :'phone_number' => :'phoneNumber',
        :'name' => :'name',
        :'token' => :'token',
        :'uri' => :'uri',
        :'channel_id' => :'channelId',
        :'channel_secret' => :'channelSecret',
        :'channel_access_token' => :'channelAccessToken',
        :'bot_name' => :'botName',
        :'encoding_aes_key' => :'encodingAesKey',
        :'from_address' => :'fromAddress',
        :'certificate' => :'certificate',
        :'password' => :'password',
        :'auto_update_badge' => :'autoUpdateBadge',
        :'production' => :'production',
        :'server_key' => :'serverKey',
        :'sender_id' => :'senderId',
        :'consumer_key' => :'consumerKey',
        :'consumer_secret' => :'consumerSecret',
        :'access_token_key' => :'accessTokenKey',
        :'access_token_secret' => :'accessTokenSecret',
        :'user_id' => :'userId',
        :'username' => :'username',
        :'api_key' => :'apiKey',
        :'domain' => :'domain',
        :'incoming_address' => :'incomingAddress',
        :'access_key' => :'accessKey',
        :'originator' => :'originator',
        :'brand_color' => :'brandColor',
        :'fixed_intro_pane' => :'fixedIntroPane',
        :'conversation_color' => :'conversationColor',
        :'action_color' => :'actionColor',
        :'display_style' => :'displayStyle',
        :'button_icon_url' => :'buttonIconUrl',
        :'button_width' => :'buttonWidth',
        :'button_height' => :'buttonHeight',
        :'integration_order' => :'integrationOrder',
        :'business_name' => :'businessName',
        :'business_icon_url' => :'businessIconUrl',
        :'background_image_url' => :'backgroundImageUrl',
        :'origin_whitelist' => :'originWhitelist'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_id' => :'String',
        :'type' => :'String',
        :'page_access_token' => :'String',
        :'app_id' => :'String',
        :'app_secret' => :'String',
        :'webhook_secret' => :'String',
        :'page_id' => :'String',
        :'account_sid' => :'String',
        :'auth_token' => :'String',
        :'phone_number_sid' => :'String',
        :'phone_number' => :'String',
        :'name' => :'String',
        :'token' => :'String',
        :'uri' => :'String',
        :'channel_id' => :'String',
        :'channel_secret' => :'String',
        :'channel_access_token' => :'String',
        :'bot_name' => :'String',
        :'encoding_aes_key' => :'String',
        :'from_address' => :'String',
        :'certificate' => :'String',
        :'password' => :'String',
        :'auto_update_badge' => :'BOOLEAN',
        :'production' => :'BOOLEAN',
        :'server_key' => :'String',
        :'sender_id' => :'String',
        :'consumer_key' => :'String',
        :'consumer_secret' => :'String',
        :'access_token_key' => :'String',
        :'access_token_secret' => :'String',
        :'user_id' => :'String',
        :'username' => :'String',
        :'api_key' => :'String',
        :'domain' => :'String',
        :'incoming_address' => :'String',
        :'access_key' => :'String',
        :'originator' => :'String',
        :'brand_color' => :'String',
        :'fixed_intro_pane' => :'BOOLEAN',
        :'conversation_color' => :'String',
        :'action_color' => :'String',
        :'display_style' => :'String',
        :'button_icon_url' => :'String',
        :'button_width' => :'String',
        :'button_height' => :'String',
        :'integration_order' => :'Array<String>',
        :'business_name' => :'String',
        :'business_icon_url' => :'String',
        :'background_image_url' => :'String',
        :'origin_whitelist' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'_id')
        self._id = attributes[:'_id']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'pageAccessToken')
        self.page_access_token = attributes[:'pageAccessToken']
      end

      if attributes.has_key?(:'appId')
        self.app_id = attributes[:'appId']
      end

      if attributes.has_key?(:'appSecret')
        self.app_secret = attributes[:'appSecret']
      end

      if attributes.has_key?(:'webhookSecret')
        self.webhook_secret = attributes[:'webhookSecret']
      end

      if attributes.has_key?(:'pageId')
        self.page_id = attributes[:'pageId']
      end

      if attributes.has_key?(:'accountSid')
        self.account_sid = attributes[:'accountSid']
      end

      if attributes.has_key?(:'authToken')
        self.auth_token = attributes[:'authToken']
      end

      if attributes.has_key?(:'phoneNumberSid')
        self.phone_number_sid = attributes[:'phoneNumberSid']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phone_number = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.has_key?(:'uri')
        self.uri = attributes[:'uri']
      end

      if attributes.has_key?(:'channelId')
        self.channel_id = attributes[:'channelId']
      end

      if attributes.has_key?(:'channelSecret')
        self.channel_secret = attributes[:'channelSecret']
      end

      if attributes.has_key?(:'channelAccessToken')
        self.channel_access_token = attributes[:'channelAccessToken']
      end

      if attributes.has_key?(:'botName')
        self.bot_name = attributes[:'botName']
      end

      if attributes.has_key?(:'encodingAesKey')
        self.encoding_aes_key = attributes[:'encodingAesKey']
      end

      if attributes.has_key?(:'fromAddress')
        self.from_address = attributes[:'fromAddress']
      end

      if attributes.has_key?(:'certificate')
        self.certificate = attributes[:'certificate']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'autoUpdateBadge')
        self.auto_update_badge = attributes[:'autoUpdateBadge']
      end

      if attributes.has_key?(:'production')
        self.production = attributes[:'production']
      end

      if attributes.has_key?(:'serverKey')
        self.server_key = attributes[:'serverKey']
      end

      if attributes.has_key?(:'senderId')
        self.sender_id = attributes[:'senderId']
      end

      if attributes.has_key?(:'consumerKey')
        self.consumer_key = attributes[:'consumerKey']
      end

      if attributes.has_key?(:'consumerSecret')
        self.consumer_secret = attributes[:'consumerSecret']
      end

      if attributes.has_key?(:'accessTokenKey')
        self.access_token_key = attributes[:'accessTokenKey']
      end

      if attributes.has_key?(:'accessTokenSecret')
        self.access_token_secret = attributes[:'accessTokenSecret']
      end

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'apiKey')
        self.api_key = attributes[:'apiKey']
      end

      if attributes.has_key?(:'domain')
        self.domain = attributes[:'domain']
      end

      if attributes.has_key?(:'incomingAddress')
        self.incoming_address = attributes[:'incomingAddress']
      end

      if attributes.has_key?(:'accessKey')
        self.access_key = attributes[:'accessKey']
      end

      if attributes.has_key?(:'originator')
        self.originator = attributes[:'originator']
      end

      if attributes.has_key?(:'brandColor')
        self.brand_color = attributes[:'brandColor']
      end

      if attributes.has_key?(:'fixedIntroPane')
        self.fixed_intro_pane = attributes[:'fixedIntroPane']
      end

      if attributes.has_key?(:'conversationColor')
        self.conversation_color = attributes[:'conversationColor']
      end

      if attributes.has_key?(:'actionColor')
        self.action_color = attributes[:'actionColor']
      end

      if attributes.has_key?(:'displayStyle')
        self.display_style = attributes[:'displayStyle']
      end

      if attributes.has_key?(:'buttonIconUrl')
        self.button_icon_url = attributes[:'buttonIconUrl']
      end

      if attributes.has_key?(:'buttonWidth')
        self.button_width = attributes[:'buttonWidth']
      end

      if attributes.has_key?(:'buttonHeight')
        self.button_height = attributes[:'buttonHeight']
      end

      if attributes.has_key?(:'integrationOrder')
        if (value = attributes[:'integrationOrder']).is_a?(Array)
          self.integration_order = value
        end
      end

      if attributes.has_key?(:'businessName')
        self.business_name = attributes[:'businessName']
      end

      if attributes.has_key?(:'businessIconUrl')
        self.business_icon_url = attributes[:'businessIconUrl']
      end

      if attributes.has_key?(:'backgroundImageUrl')
        self.background_image_url = attributes[:'backgroundImageUrl']
      end

      if attributes.has_key?(:'originWhitelist')
        if (value = attributes[:'originWhitelist']).is_a?(Array)
          self.origin_whitelist = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @_id.nil?
        invalid_properties.push("invalid value for '_id', _id cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @_id.nil?
      return false if @type.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _id == o._id &&
          type == o.type &&
          page_access_token == o.page_access_token &&
          app_id == o.app_id &&
          app_secret == o.app_secret &&
          webhook_secret == o.webhook_secret &&
          page_id == o.page_id &&
          account_sid == o.account_sid &&
          auth_token == o.auth_token &&
          phone_number_sid == o.phone_number_sid &&
          phone_number == o.phone_number &&
          name == o.name &&
          token == o.token &&
          uri == o.uri &&
          channel_id == o.channel_id &&
          channel_secret == o.channel_secret &&
          channel_access_token == o.channel_access_token &&
          bot_name == o.bot_name &&
          encoding_aes_key == o.encoding_aes_key &&
          from_address == o.from_address &&
          certificate == o.certificate &&
          password == o.password &&
          auto_update_badge == o.auto_update_badge &&
          production == o.production &&
          server_key == o.server_key &&
          sender_id == o.sender_id &&
          consumer_key == o.consumer_key &&
          consumer_secret == o.consumer_secret &&
          access_token_key == o.access_token_key &&
          access_token_secret == o.access_token_secret &&
          user_id == o.user_id &&
          username == o.username &&
          api_key == o.api_key &&
          domain == o.domain &&
          incoming_address == o.incoming_address &&
          access_key == o.access_key &&
          originator == o.originator &&
          brand_color == o.brand_color &&
          fixed_intro_pane == o.fixed_intro_pane &&
          conversation_color == o.conversation_color &&
          action_color == o.action_color &&
          display_style == o.display_style &&
          button_icon_url == o.button_icon_url &&
          button_width == o.button_width &&
          button_height == o.button_height &&
          integration_order == o.integration_order &&
          business_name == o.business_name &&
          business_icon_url == o.business_icon_url &&
          background_image_url == o.background_image_url &&
          origin_whitelist == o.origin_whitelist
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_id, type, page_access_token, app_id, app_secret, webhook_secret, page_id, account_sid, auth_token, phone_number_sid, phone_number, name, token, uri, channel_id, channel_secret, channel_access_token, bot_name, encoding_aes_key, from_address, certificate, password, auto_update_badge, production, server_key, sender_id, consumer_key, consumer_secret, access_token_key, access_token_secret, user_id, username, api_key, domain, incoming_address, access_key, originator, brand_color, fixed_intro_pane, conversation_color, action_color, display_style, button_icon_url, button_width, button_height, integration_order, business_name, business_icon_url, background_image_url, origin_whitelist].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SmoochApi.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
