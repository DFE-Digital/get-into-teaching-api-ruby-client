=begin
#Get into Teaching API - V1

# Provides a RESTful API for integrating with the Get into Teaching CRM. The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events). The GIT API aims to provide: * Simple, task-based RESTful APIs. * Message queueing (while the GIT CRM is offline for updates). * Validation to ensure consistency across services writing to the GIT CRM.                         

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.23

=end

require 'date'

module GetIntoTeachingApiClient
  class ClassroomExperienceNote
    attr_accessor :recorded_at

    attr_accessor :action

    attr_accessor :date

    attr_accessor :school_urn

    attr_accessor :school_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'recorded_at' => :'recordedAt',
        :'action' => :'action',
        :'date' => :'date',
        :'school_urn' => :'schoolUrn',
        :'school_name' => :'schoolName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'recorded_at' => :'Date',
        :'action' => :'String',
        :'date' => :'Date',
        :'school_urn' => :'Integer',
        :'school_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'recordedAt')
        self.recorded_at = attributes[:'recordedAt']
      end

      if attributes.has_key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'schoolUrn')
        self.school_urn = attributes[:'schoolUrn']
      end

      if attributes.has_key?(:'schoolName')
        self.school_name = attributes[:'schoolName']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @recorded_at.nil?
        invalid_properties.push('invalid value for "recorded_at", recorded_at cannot be nil.')
      end

      if @action.nil?
        invalid_properties.push('invalid value for "action", action cannot be nil.')
      end

      if @action.to_s.length < 1
        invalid_properties.push('invalid value for "action", the character length must be great than or equal to 1.')
      end

      if @school_urn.nil?
        invalid_properties.push('invalid value for "school_urn", school_urn cannot be nil.')
      end

      if @school_name.nil?
        invalid_properties.push('invalid value for "school_name", school_name cannot be nil.')
      end

      if @school_name.to_s.length < 1
        invalid_properties.push('invalid value for "school_name", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @recorded_at.nil?
      return false if @action.nil?
      return false if @action.to_s.length < 1
      return false if @school_urn.nil?
      return false if @school_name.nil?
      return false if @school_name.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] action Value to be assigned
    def action=(action)
      if action.nil?
        fail ArgumentError, 'action cannot be nil'
      end

      if action.to_s.length < 1
        fail ArgumentError, 'invalid value for "action", the character length must be great than or equal to 1.'
      end

      @action = action
    end

    # Custom attribute writer method with validation
    # @param [Object] school_name Value to be assigned
    def school_name=(school_name)
      if school_name.nil?
        fail ArgumentError, 'school_name cannot be nil'
      end

      if school_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "school_name", the character length must be great than or equal to 1.'
      end

      @school_name = school_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          recorded_at == o.recorded_at &&
          action == o.action &&
          date == o.date &&
          school_urn == o.school_urn &&
          school_name == o.school_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [recorded_at, action, date, school_urn, school_name].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
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
        temp_model = GetIntoTeachingApiClient.const_get(type).new
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
