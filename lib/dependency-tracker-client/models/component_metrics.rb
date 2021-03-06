=begin
#Dependency-Track API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 3.8.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module DependencyTracker
  class ComponentMetrics
    attr_accessor :component

    attr_accessor :critical

    attr_accessor :high

    attr_accessor :medium

    attr_accessor :low

    attr_accessor :unassigned

    attr_accessor :vulnerabilities

    attr_accessor :suppressed

    attr_accessor :findings_total

    attr_accessor :findings_audited

    attr_accessor :findings_unaudited

    attr_accessor :inherited_risk_score

    attr_accessor :first_occurrence

    attr_accessor :last_occurrence

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'component' => :'component',
        :'critical' => :'critical',
        :'high' => :'high',
        :'medium' => :'medium',
        :'low' => :'low',
        :'unassigned' => :'unassigned',
        :'vulnerabilities' => :'vulnerabilities',
        :'suppressed' => :'suppressed',
        :'findings_total' => :'findingsTotal',
        :'findings_audited' => :'findingsAudited',
        :'findings_unaudited' => :'findingsUnaudited',
        :'inherited_risk_score' => :'inheritedRiskScore',
        :'first_occurrence' => :'firstOccurrence',
        :'last_occurrence' => :'lastOccurrence'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'component' => :'Component',
        :'critical' => :'Integer',
        :'high' => :'Integer',
        :'medium' => :'Integer',
        :'low' => :'Integer',
        :'unassigned' => :'Integer',
        :'vulnerabilities' => :'Integer',
        :'suppressed' => :'Integer',
        :'findings_total' => :'Integer',
        :'findings_audited' => :'Integer',
        :'findings_unaudited' => :'Integer',
        :'inherited_risk_score' => :'Float',
        :'first_occurrence' => :'Integer',
        :'last_occurrence' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DependencyTracker::ComponentMetrics` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DependencyTracker::ComponentMetrics`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'component')
        self.component = attributes[:'component']
      end

      if attributes.key?(:'critical')
        self.critical = attributes[:'critical']
      end

      if attributes.key?(:'high')
        self.high = attributes[:'high']
      end

      if attributes.key?(:'medium')
        self.medium = attributes[:'medium']
      end

      if attributes.key?(:'low')
        self.low = attributes[:'low']
      end

      if attributes.key?(:'unassigned')
        self.unassigned = attributes[:'unassigned']
      end

      if attributes.key?(:'vulnerabilities')
        self.vulnerabilities = attributes[:'vulnerabilities']
      end

      if attributes.key?(:'suppressed')
        self.suppressed = attributes[:'suppressed']
      end

      if attributes.key?(:'findings_total')
        self.findings_total = attributes[:'findings_total']
      end

      if attributes.key?(:'findings_audited')
        self.findings_audited = attributes[:'findings_audited']
      end

      if attributes.key?(:'findings_unaudited')
        self.findings_unaudited = attributes[:'findings_unaudited']
      end

      if attributes.key?(:'inherited_risk_score')
        self.inherited_risk_score = attributes[:'inherited_risk_score']
      end

      if attributes.key?(:'first_occurrence')
        self.first_occurrence = attributes[:'first_occurrence']
      end

      if attributes.key?(:'last_occurrence')
        self.last_occurrence = attributes[:'last_occurrence']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @component.nil?
        invalid_properties.push('invalid value for "component", component cannot be nil.')
      end

      if @first_occurrence.nil?
        invalid_properties.push('invalid value for "first_occurrence", first_occurrence cannot be nil.')
      end

      if @last_occurrence.nil?
        invalid_properties.push('invalid value for "last_occurrence", last_occurrence cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @component.nil?
      return false if @first_occurrence.nil?
      return false if @last_occurrence.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          component == o.component &&
          critical == o.critical &&
          high == o.high &&
          medium == o.medium &&
          low == o.low &&
          unassigned == o.unassigned &&
          vulnerabilities == o.vulnerabilities &&
          suppressed == o.suppressed &&
          findings_total == o.findings_total &&
          findings_audited == o.findings_audited &&
          findings_unaudited == o.findings_unaudited &&
          inherited_risk_score == o.inherited_risk_score &&
          first_occurrence == o.first_occurrence &&
          last_occurrence == o.last_occurrence
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [component, critical, high, medium, low, unassigned, vulnerabilities, suppressed, findings_total, findings_audited, findings_unaudited, inherited_risk_score, first_occurrence, last_occurrence].hash
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
