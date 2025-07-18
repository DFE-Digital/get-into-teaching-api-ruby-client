=begin
#Get into Teaching API - V1

#                              Provides a RESTful API for integrating with the Get into Teaching CRM.                              The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events).                              The GIT API aims to provide:                              * Simple, task-based RESTful APIs.                              * Message queueing (while the GIT CRM is offline for updates).                              * Validation to ensure consistency across services writing to the GIT CRM.                          

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'date'
require 'time'

module GetIntoTeachingApiClient
  class TeachingEvent
    attr_accessor :id

    attr_accessor :type_id

    attr_accessor :status_id

    attr_accessor :region_id

    attr_accessor :readable_id

    # If set, the API will accept new attendees for this event (an external sign up should be used if this value is nil).
    attr_accessor :web_feed_id

    attr_accessor :is_online

    attr_accessor :name

    attr_accessor :summary

    # Used to push miscellaneous messages to users (if an event is close to being booked out, for example).
    attr_accessor :message

    attr_accessor :description

    attr_accessor :video_url

    attr_accessor :scribble_id

    attr_accessor :provider_website_url

    attr_accessor :provider_target_audience

    attr_accessor :provider_organiser

    attr_accessor :provider_contact_email

    attr_accessor :start_at

    attr_accessor :end_at

    attr_accessor :providers_list

    attr_accessor :building

    attr_accessor :is_virtual

    attr_accessor :accessibility_options

    attr_accessor :is_in_person

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'type_id' => :'typeId',
        :'status_id' => :'statusId',
        :'region_id' => :'regionId',
        :'readable_id' => :'readableId',
        :'web_feed_id' => :'webFeedId',
        :'is_online' => :'isOnline',
        :'name' => :'name',
        :'summary' => :'summary',
        :'message' => :'message',
        :'description' => :'description',
        :'video_url' => :'videoUrl',
        :'scribble_id' => :'scribbleId',
        :'provider_website_url' => :'providerWebsiteUrl',
        :'provider_target_audience' => :'providerTargetAudience',
        :'provider_organiser' => :'providerOrganiser',
        :'provider_contact_email' => :'providerContactEmail',
        :'start_at' => :'startAt',
        :'end_at' => :'endAt',
        :'providers_list' => :'providersList',
        :'building' => :'building',
        :'is_virtual' => :'isVirtual',
        :'accessibility_options' => :'accessibilityOptions',
        :'is_in_person' => :'isInPerson'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'type_id' => :'Integer',
        :'status_id' => :'Integer',
        :'region_id' => :'Integer',
        :'readable_id' => :'String',
        :'web_feed_id' => :'String',
        :'is_online' => :'Boolean',
        :'name' => :'String',
        :'summary' => :'String',
        :'message' => :'String',
        :'description' => :'String',
        :'video_url' => :'String',
        :'scribble_id' => :'String',
        :'provider_website_url' => :'String',
        :'provider_target_audience' => :'String',
        :'provider_organiser' => :'String',
        :'provider_contact_email' => :'String',
        :'start_at' => :'Time',
        :'end_at' => :'Time',
        :'providers_list' => :'String',
        :'building' => :'TeachingEventBuilding',
        :'is_virtual' => :'Boolean',
        :'accessibility_options' => :'Array<Integer>',
        :'is_in_person' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'region_id',
        :'web_feed_id',
        :'summary',
        :'message',
        :'description',
        :'video_url',
        :'scribble_id',
        :'provider_website_url',
        :'provider_target_audience',
        :'provider_organiser',
        :'provider_contact_email',
        :'providers_list',
        :'accessibility_options',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `GetIntoTeachingApiClient::TeachingEvent` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `GetIntoTeachingApiClient::TeachingEvent`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'type_id')
        self.type_id = attributes[:'type_id']
      end

      if attributes.key?(:'status_id')
        self.status_id = attributes[:'status_id']
      end

      if attributes.key?(:'region_id')
        self.region_id = attributes[:'region_id']
      end

      if attributes.key?(:'readable_id')
        self.readable_id = attributes[:'readable_id']
      end

      if attributes.key?(:'web_feed_id')
        self.web_feed_id = attributes[:'web_feed_id']
      end

      if attributes.key?(:'is_online')
        self.is_online = attributes[:'is_online']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'summary')
        self.summary = attributes[:'summary']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'video_url')
        self.video_url = attributes[:'video_url']
      end

      if attributes.key?(:'scribble_id')
        self.scribble_id = attributes[:'scribble_id']
      end

      if attributes.key?(:'provider_website_url')
        self.provider_website_url = attributes[:'provider_website_url']
      end

      if attributes.key?(:'provider_target_audience')
        self.provider_target_audience = attributes[:'provider_target_audience']
      end

      if attributes.key?(:'provider_organiser')
        self.provider_organiser = attributes[:'provider_organiser']
      end

      if attributes.key?(:'provider_contact_email')
        self.provider_contact_email = attributes[:'provider_contact_email']
      end

      if attributes.key?(:'start_at')
        self.start_at = attributes[:'start_at']
      end

      if attributes.key?(:'end_at')
        self.end_at = attributes[:'end_at']
      end

      if attributes.key?(:'providers_list')
        self.providers_list = attributes[:'providers_list']
      end

      if attributes.key?(:'building')
        self.building = attributes[:'building']
      end

      if attributes.key?(:'is_virtual')
        self.is_virtual = attributes[:'is_virtual']
      end

      if attributes.key?(:'accessibility_options')
        if (value = attributes[:'accessibility_options']).is_a?(Array)
          self.accessibility_options = value
        end
      end

      if attributes.key?(:'is_in_person')
        self.is_in_person = attributes[:'is_in_person']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @readable_id.nil?
        invalid_properties.push('invalid value for "readable_id", readable_id cannot be nil.')
      end

      if @readable_id.to_s.length < 1
        invalid_properties.push('invalid value for "readable_id", the character length must be great than or equal to 1.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      if !@provider_contact_email.nil? && @provider_contact_email.to_s.length > 100
        invalid_properties.push('invalid value for "provider_contact_email", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @readable_id.nil?
      return false if @readable_id.to_s.length < 1
      return false if @name.nil?
      return false if @name.to_s.length < 1
      return false if !@provider_contact_email.nil? && @provider_contact_email.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] readable_id Value to be assigned
    def readable_id=(readable_id)
      if readable_id.nil?
        fail ArgumentError, 'readable_id cannot be nil'
      end

      if readable_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "readable_id", the character length must be great than or equal to 1.'
      end

      @readable_id = readable_id
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] provider_contact_email Value to be assigned
    def provider_contact_email=(provider_contact_email)
      if !provider_contact_email.nil? && provider_contact_email.to_s.length > 100
        fail ArgumentError, 'invalid value for "provider_contact_email", the character length must be smaller than or equal to 100.'
      end

      @provider_contact_email = provider_contact_email
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type_id == o.type_id &&
          status_id == o.status_id &&
          region_id == o.region_id &&
          readable_id == o.readable_id &&
          web_feed_id == o.web_feed_id &&
          is_online == o.is_online &&
          name == o.name &&
          summary == o.summary &&
          message == o.message &&
          description == o.description &&
          video_url == o.video_url &&
          scribble_id == o.scribble_id &&
          provider_website_url == o.provider_website_url &&
          provider_target_audience == o.provider_target_audience &&
          provider_organiser == o.provider_organiser &&
          provider_contact_email == o.provider_contact_email &&
          start_at == o.start_at &&
          end_at == o.end_at &&
          providers_list == o.providers_list &&
          building == o.building &&
          is_virtual == o.is_virtual &&
          accessibility_options == o.accessibility_options &&
          is_in_person == o.is_in_person
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, type_id, status_id, region_id, readable_id, web_feed_id, is_online, name, summary, message, description, video_url, scribble_id, provider_website_url, provider_target_audience, provider_organiser, provider_contact_email, start_at, end_at, providers_list, building, is_virtual, accessibility_options, is_in_person].hash
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
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
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
        # models (e.g. Pet) or oneOf
        klass = GetIntoTeachingApiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
