=begin
#Get into Teaching API - V1

#  Provides a RESTful API for integrating with the Get into Teaching CRM.    The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events).    The GIT API aims to provide:    * Simple, task-based RESTful APIs.  * Message queueing (while the GIT CRM is offline for updates).  * Validation to ensure consistency across services writing to the GIT CRM.                          

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module GetIntoTeachingApiClient
  class TeachingEvent
    attr_accessor :type_id

    attr_accessor :status_id

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

    attr_accessor :building

    attr_accessor :is_virtual

    attr_accessor :is_in_person

    attr_accessor :id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type_id' => :'typeId',
        :'status_id' => :'statusId',
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
        :'building' => :'building',
        :'is_virtual' => :'isVirtual',
        :'is_in_person' => :'isInPerson',
        :'id' => :'id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type_id' => :'Integer',
        :'status_id' => :'Integer',
        :'readable_id' => :'String',
        :'web_feed_id' => :'String',
        :'is_online' => :'BOOLEAN',
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
        :'start_at' => :'DateTime',
        :'end_at' => :'DateTime',
        :'building' => :'TeachingEventBuilding',
        :'is_virtual' => :'BOOLEAN',
        :'is_in_person' => :'BOOLEAN',
        :'id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'typeId')
        self.type_id = attributes[:'typeId']
      end

      if attributes.has_key?(:'statusId')
        self.status_id = attributes[:'statusId']
      end

      if attributes.has_key?(:'readableId')
        self.readable_id = attributes[:'readableId']
      end

      if attributes.has_key?(:'webFeedId')
        self.web_feed_id = attributes[:'webFeedId']
      end

      if attributes.has_key?(:'isOnline')
        self.is_online = attributes[:'isOnline']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'summary')
        self.summary = attributes[:'summary']
      end

      if attributes.has_key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'videoUrl')
        self.video_url = attributes[:'videoUrl']
      end

      if attributes.has_key?(:'scribbleId')
        self.scribble_id = attributes[:'scribbleId']
      end

      if attributes.has_key?(:'providerWebsiteUrl')
        self.provider_website_url = attributes[:'providerWebsiteUrl']
      end

      if attributes.has_key?(:'providerTargetAudience')
        self.provider_target_audience = attributes[:'providerTargetAudience']
      end

      if attributes.has_key?(:'providerOrganiser')
        self.provider_organiser = attributes[:'providerOrganiser']
      end

      if attributes.has_key?(:'providerContactEmail')
        self.provider_contact_email = attributes[:'providerContactEmail']
      end

      if attributes.has_key?(:'startAt')
        self.start_at = attributes[:'startAt']
      end

      if attributes.has_key?(:'endAt')
        self.end_at = attributes[:'endAt']
      end

      if attributes.has_key?(:'building')
        self.building = attributes[:'building']
      end

      if attributes.has_key?(:'isVirtual')
        self.is_virtual = attributes[:'isVirtual']
      end

      if attributes.has_key?(:'isInPerson')
        self.is_in_person = attributes[:'isInPerson']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type_id == o.type_id &&
          status_id == o.status_id &&
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
          building == o.building &&
          is_virtual == o.is_virtual &&
          is_in_person == o.is_in_person &&
          id == o.id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type_id, status_id, readable_id, web_feed_id, is_online, name, summary, message, description, video_url, scribble_id, provider_website_url, provider_target_audience, provider_organiser, provider_contact_email, start_at, end_at, building, is_virtual, is_in_person, id].hash
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
