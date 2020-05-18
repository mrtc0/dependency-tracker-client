=begin
#Dependency-Track API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 3.8.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module DependencyTracker
  class NotificationRule
    attr_accessor :name

    attr_accessor :enabled

    attr_accessor :scope

    attr_accessor :notification_level

    attr_accessor :projects

    attr_accessor :notify_on

    attr_accessor :message

    attr_accessor :publisher

    attr_accessor :publisher_config

    attr_accessor :uuid

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'enabled' => :'enabled',
        :'scope' => :'scope',
        :'notification_level' => :'notificationLevel',
        :'projects' => :'projects',
        :'notify_on' => :'notifyOn',
        :'message' => :'message',
        :'publisher' => :'publisher',
        :'publisher_config' => :'publisherConfig',
        :'uuid' => :'uuid'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'enabled' => :'Boolean',
        :'scope' => :'String',
        :'notification_level' => :'String',
        :'projects' => :'Array<Project>',
        :'notify_on' => :'Array<String>',
        :'message' => :'String',
        :'publisher' => :'NotificationPublisher',
        :'publisher_config' => :'String',
        :'uuid' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DependencyTracker::NotificationRule` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DependencyTracker::NotificationRule`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.key?(:'notification_level')
        self.notification_level = attributes[:'notification_level']
      end

      if attributes.key?(:'projects')
        if (value = attributes[:'projects']).is_a?(Array)
          self.projects = value
        end
      end

      if attributes.key?(:'notify_on')
        if (value = attributes[:'notify_on']).is_a?(Array)
          self.notify_on = value
        end
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'publisher')
        self.publisher = attributes[:'publisher']
      end

      if attributes.key?(:'publisher_config')
        self.publisher_config = attributes[:'publisher_config']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 255
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 255.')
      end

      if @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^[\p{White_Space}\p{L}\p{M}\p{S}\p{N}\p{P}]*$/)
      if @name !~ pattern
        invalid_properties.push("invalid value for \"name\", must conform to the pattern #{pattern}.")
      end

      if @scope.nil?
        invalid_properties.push('invalid value for "scope", scope cannot be nil.')
      end

      if !@message.nil? && @message.to_s.length > 1024
        invalid_properties.push('invalid value for "message", the character length must be smaller than or equal to 1024.')
      end

      if !@message.nil? && @message.to_s.length < 0
        invalid_properties.push('invalid value for "message", the character length must be great than or equal to 0.')
      end

      pattern = Regexp.new(/^[\p{White_Space}\p{L}\p{M}\p{S}\p{N}\p{P}]*$/)
      if !@message.nil? && @message !~ pattern
        invalid_properties.push("invalid value for \"message\", must conform to the pattern #{pattern}.")
      end

      if @uuid.nil?
        invalid_properties.push('invalid value for "uuid", uuid cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 255
      return false if @name.to_s.length < 1
      return false if @name !~ Regexp.new(/^[\p{White_Space}\p{L}\p{M}\p{S}\p{N}\p{P}]*$/)
      return false if @scope.nil?
      scope_validator = EnumAttributeValidator.new('String', ["SYSTEM", "PORTFOLIO"])
      return false unless scope_validator.valid?(@scope)
      notification_level_validator = EnumAttributeValidator.new('String', ["INFORMATIONAL", "WARNING", "ERROR"])
      return false unless notification_level_validator.valid?(@notification_level)
      return false if !@message.nil? && @message.to_s.length > 1024
      return false if !@message.nil? && @message.to_s.length < 0
      return false if !@message.nil? && @message !~ Regexp.new(/^[\p{White_Space}\p{L}\p{M}\p{S}\p{N}\p{P}]*$/)
      return false if @uuid.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 255
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 255.'
      end

      if name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[\p{White_Space}\p{L}\p{M}\p{S}\p{N}\p{P}]*$/)
      if name !~ pattern
        fail ArgumentError, "invalid value for \"name\", must conform to the pattern #{pattern}."
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] scope Object to be assigned
    def scope=(scope)
      validator = EnumAttributeValidator.new('String', ["SYSTEM", "PORTFOLIO"])
      unless validator.valid?(scope)
        fail ArgumentError, "invalid value for \"scope\", must be one of #{validator.allowable_values}."
      end
      @scope = scope
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] notification_level Object to be assigned
    def notification_level=(notification_level)
      validator = EnumAttributeValidator.new('String', ["INFORMATIONAL", "WARNING", "ERROR"])
      unless validator.valid?(notification_level)
        fail ArgumentError, "invalid value for \"notification_level\", must be one of #{validator.allowable_values}."
      end
      @notification_level = notification_level
    end

    # Custom attribute writer method with validation
    # @param [Object] message Value to be assigned
    def message=(message)
      if !message.nil? && message.to_s.length > 1024
        fail ArgumentError, 'invalid value for "message", the character length must be smaller than or equal to 1024.'
      end

      if !message.nil? && message.to_s.length < 0
        fail ArgumentError, 'invalid value for "message", the character length must be great than or equal to 0.'
      end

      pattern = Regexp.new(/^[\p{White_Space}\p{L}\p{M}\p{S}\p{N}\p{P}]*$/)
      if !message.nil? && message !~ pattern
        fail ArgumentError, "invalid value for \"message\", must conform to the pattern #{pattern}."
      end

      @message = message
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          enabled == o.enabled &&
          scope == o.scope &&
          notification_level == o.notification_level &&
          projects == o.projects &&
          notify_on == o.notify_on &&
          message == o.message &&
          publisher == o.publisher &&
          publisher_config == o.publisher_config &&
          uuid == o.uuid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, enabled, scope, notification_level, projects, notify_on, message, publisher, publisher_config, uuid].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
      when :Boolean
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
        DependencyTracker.const_get(type).build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
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
        value.compact.map { |v| _to_hash(v) }
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