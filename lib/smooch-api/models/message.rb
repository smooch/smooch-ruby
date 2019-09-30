=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.18

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module SmoochApi

  class Message
    # The message ID, generated automatically.
    attr_accessor :id

    # The ID of the message's author.
    attr_accessor :authorId

    # The role of the individual posting the message. See [**RoleEnum**](Enums.md#RoleEnum) for available values.
    attr_accessor :role

    # The message type. See [**MessageTypeEnum**](Enums.md#MessageTypeEnum) for available values.
    attr_accessor :type

    # The source of the message.
    attr_accessor :source

    # The display name of the message author.
    attr_accessor :name

    # The message text. Required for text messages. 
    attr_accessor :text

    # The email address of the message author.
    attr_accessor :email

    # The URL of the desired message avatar image.
    attr_accessor :avatarUrl

    # The unix timestamp of the moment the message was received.
    attr_accessor :received

    # The mediaUrl for the message. Required for image/file messages. 
    attr_accessor :mediaUrl

    # The mediaType for the message. Required for image/file messages. 
    attr_accessor :mediaType

    # Flat JSON object containing any custom properties associated with the message.
    attr_accessor :metadata

    # The items in the message list. Required for carousel and list messages. 
    attr_accessor :items

    # The actions in the message.
    attr_accessor :actions

    # The payload of a reply action, if applicable.
    attr_accessor :payload

    # Settings to adjust the carousel layout. See [Display Settings](https://docs.smooch.io/rest/#display-settings).
    attr_accessor :displaySettings

    # Indicates if the Web SDK chat input should be blocked. Defaults to false. Only for form messages. 
    attr_accessor :blockChatInput

    # The fields in the form. Required for form and formResponse messages. 
    attr_accessor :fields

    # Indicates if the form was submitted. Generated automatically.
    attr_accessor :submitted

    # The form message a formResponse message responds to. Required for formResponse messages. 
    attr_accessor :quotedMessage

    # The text fallback displayed in channels that do not support form messages. Only for formResponse messages. Generated automatically. 
    attr_accessor :textFallback


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'_id',
        :'authorId' => :'authorId',
        :'role' => :'role',
        :'type' => :'type',
        :'source' => :'source',
        :'name' => :'name',
        :'text' => :'text',
        :'email' => :'email',
        :'avatarUrl' => :'avatarUrl',
        :'received' => :'received',
        :'mediaUrl' => :'mediaUrl',
        :'mediaType' => :'mediaType',
        :'metadata' => :'metadata',
        :'items' => :'items',
        :'actions' => :'actions',
        :'payload' => :'payload',
        :'displaySettings' => :'displaySettings',
        :'blockChatInput' => :'blockChatInput',
        :'fields' => :'fields',
        :'submitted' => :'submitted',
        :'quotedMessage' => :'quotedMessage',
        :'textFallback' => :'textFallback'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'authorId' => :'String',
        :'role' => :'String',
        :'type' => :'String',
        :'source' => :'Source',
        :'name' => :'String',
        :'text' => :'String',
        :'email' => :'String',
        :'avatarUrl' => :'String',
        :'received' => :'Float',
        :'mediaUrl' => :'String',
        :'mediaType' => :'String',
        :'metadata' => :'Object',
        :'items' => :'Array<MessageItem>',
        :'actions' => :'Array<Action>',
        :'payload' => :'String',
        :'displaySettings' => :'DisplaySettings',
        :'blockChatInput' => :'BOOLEAN',
        :'fields' => :'Array<Field>',
        :'submitted' => :'BOOLEAN',
        :'quotedMessage' => :'QuotedMessage',
        :'textFallback' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'_id')
        self.id = attributes[:'_id']
      end

      if attributes.has_key?(:'authorId')
        self.authorId = attributes[:'authorId']
      end

      if attributes.has_key?(:'role')
        self.role = attributes[:'role']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'avatarUrl')
        self.avatarUrl = attributes[:'avatarUrl']
      end

      if attributes.has_key?(:'received')
        self.received = attributes[:'received']
      end

      if attributes.has_key?(:'mediaUrl')
        self.mediaUrl = attributes[:'mediaUrl']
      end

      if attributes.has_key?(:'mediaType')
        self.mediaType = attributes[:'mediaType']
      end

      if attributes.has_key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.has_key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.has_key?(:'actions')
        if (value = attributes[:'actions']).is_a?(Array)
          self.actions = value
        end
      end

      if attributes.has_key?(:'payload')
        self.payload = attributes[:'payload']
      end

      if attributes.has_key?(:'displaySettings')
        self.displaySettings = attributes[:'displaySettings']
      end

      if attributes.has_key?(:'blockChatInput')
        self.blockChatInput = attributes[:'blockChatInput']
      end

      if attributes.has_key?(:'fields')
        if (value = attributes[:'fields']).is_a?(Array)
          self.fields = value
        end
      end

      if attributes.has_key?(:'submitted')
        self.submitted = attributes[:'submitted']
      end

      if attributes.has_key?(:'quotedMessage')
        self.quotedMessage = attributes[:'quotedMessage']
      end

      if attributes.has_key?(:'textFallback')
        self.textFallback = attributes[:'textFallback']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @authorId.nil?
        invalid_properties.push("invalid value for 'authorId', authorId cannot be nil.")
      end

      if @role.nil?
        invalid_properties.push("invalid value for 'role', role cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @text.nil?
        invalid_properties.push("invalid value for 'text', text cannot be nil.")
      end

      if @avatarUrl.nil?
        invalid_properties.push("invalid value for 'avatarUrl', avatarUrl cannot be nil.")
      end

      if @received.nil?
        invalid_properties.push("invalid value for 'received', received cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @authorId.nil?
      return false if @role.nil?
      return false if @type.nil?
      return false if @name.nil?
      return false if @text.nil?
      return false if @avatarUrl.nil?
      return false if @received.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          authorId == o.authorId &&
          role == o.role &&
          type == o.type &&
          source == o.source &&
          name == o.name &&
          text == o.text &&
          email == o.email &&
          avatarUrl == o.avatarUrl &&
          received == o.received &&
          mediaUrl == o.mediaUrl &&
          mediaType == o.mediaType &&
          metadata == o.metadata &&
          items == o.items &&
          actions == o.actions &&
          payload == o.payload &&
          displaySettings == o.displaySettings &&
          blockChatInput == o.blockChatInput &&
          fields == o.fields &&
          submitted == o.submitted &&
          quotedMessage == o.quotedMessage &&
          textFallback == o.textFallback
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, authorId, role, type, source, name, text, email, avatarUrl, received, mediaUrl, mediaType, metadata, items, actions, payload, displaySettings, blockChatInput, fields, submitted, quotedMessage, textFallback].hash
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
