=begin
#Get into Teaching API - V1

# Provides a RESTful API for integrating with the Get into Teaching CRM. The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events). The GIT API aims to provide: * Simple, task-based RESTful APIs. * Message queueing (while the GIT CRM is offline for updates). * Validation to ensure consistency across services writing to the GIT CRM.                         

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module GetIntoTeachingApiClient
  class TeachingEventAddAttendee
    attr_accessor :candidate_id

    attr_accessor :qualification_id

    attr_accessor :event_id

    attr_accessor :accepted_policy_id

    attr_accessor :preferred_teaching_subject_id

    attr_accessor :consideration_journey_stage_id

    attr_accessor :degree_status_id

    attr_accessor :email

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :address_postcode

    attr_accessor :address_telephone

    attr_accessor :subscribe_to_mailing_list

    attr_accessor :already_subscribed_to_events

    attr_accessor :already_subscribed_to_mailing_list

    attr_accessor :already_subscribed_to_teacher_training_adviser

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'candidate_id' => :'candidateId',
        :'qualification_id' => :'qualificationId',
        :'event_id' => :'eventId',
        :'accepted_policy_id' => :'acceptedPolicyId',
        :'preferred_teaching_subject_id' => :'preferredTeachingSubjectId',
        :'consideration_journey_stage_id' => :'considerationJourneyStageId',
        :'degree_status_id' => :'degreeStatusId',
        :'email' => :'email',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'address_postcode' => :'addressPostcode',
        :'address_telephone' => :'addressTelephone',
        :'subscribe_to_mailing_list' => :'subscribeToMailingList',
        :'already_subscribed_to_events' => :'alreadySubscribedToEvents',
        :'already_subscribed_to_mailing_list' => :'alreadySubscribedToMailingList',
        :'already_subscribed_to_teacher_training_adviser' => :'alreadySubscribedToTeacherTrainingAdviser'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'candidate_id' => :'String',
        :'qualification_id' => :'String',
        :'event_id' => :'String',
        :'accepted_policy_id' => :'String',
        :'preferred_teaching_subject_id' => :'String',
        :'consideration_journey_stage_id' => :'Integer',
        :'degree_status_id' => :'Integer',
        :'email' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'address_postcode' => :'String',
        :'address_telephone' => :'String',
        :'subscribe_to_mailing_list' => :'BOOLEAN',
        :'already_subscribed_to_events' => :'BOOLEAN',
        :'already_subscribed_to_mailing_list' => :'BOOLEAN',
        :'already_subscribed_to_teacher_training_adviser' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'candidateId')
        self.candidate_id = attributes[:'candidateId']
      end

      if attributes.has_key?(:'qualificationId')
        self.qualification_id = attributes[:'qualificationId']
      end

      if attributes.has_key?(:'eventId')
        self.event_id = attributes[:'eventId']
      end

      if attributes.has_key?(:'acceptedPolicyId')
        self.accepted_policy_id = attributes[:'acceptedPolicyId']
      end

      if attributes.has_key?(:'preferredTeachingSubjectId')
        self.preferred_teaching_subject_id = attributes[:'preferredTeachingSubjectId']
      end

      if attributes.has_key?(:'considerationJourneyStageId')
        self.consideration_journey_stage_id = attributes[:'considerationJourneyStageId']
      end

      if attributes.has_key?(:'degreeStatusId')
        self.degree_status_id = attributes[:'degreeStatusId']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'addressPostcode')
        self.address_postcode = attributes[:'addressPostcode']
      end

      if attributes.has_key?(:'addressTelephone')
        self.address_telephone = attributes[:'addressTelephone']
      end

      if attributes.has_key?(:'subscribeToMailingList')
        self.subscribe_to_mailing_list = attributes[:'subscribeToMailingList']
      end

      if attributes.has_key?(:'alreadySubscribedToEvents')
        self.already_subscribed_to_events = attributes[:'alreadySubscribedToEvents']
      end

      if attributes.has_key?(:'alreadySubscribedToMailingList')
        self.already_subscribed_to_mailing_list = attributes[:'alreadySubscribedToMailingList']
      end

      if attributes.has_key?(:'alreadySubscribedToTeacherTrainingAdviser')
        self.already_subscribed_to_teacher_training_adviser = attributes[:'alreadySubscribedToTeacherTrainingAdviser']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @event_id.nil?
        invalid_properties.push('invalid value for "event_id", event_id cannot be nil.')
      end

      if @accepted_policy_id.nil?
        invalid_properties.push('invalid value for "accepted_policy_id", accepted_policy_id cannot be nil.')
      end

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @email.to_s.length < 1
        invalid_properties.push('invalid value for "email", the character length must be great than or equal to 1.')
      end

      if @first_name.nil?
        invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
      end

      if @first_name.to_s.length < 1
        invalid_properties.push('invalid value for "first_name", the character length must be great than or equal to 1.')
      end

      if @last_name.nil?
        invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
      end

      if @last_name.to_s.length < 1
        invalid_properties.push('invalid value for "last_name", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @event_id.nil?
      return false if @accepted_policy_id.nil?
      return false if @email.nil?
      return false if @email.to_s.length < 1
      return false if @first_name.nil?
      return false if @first_name.to_s.length < 1
      return false if @last_name.nil?
      return false if @last_name.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if email.nil?
        fail ArgumentError, 'email cannot be nil'
      end

      if email.to_s.length < 1
        fail ArgumentError, 'invalid value for "email", the character length must be great than or equal to 1.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if first_name.nil?
        fail ArgumentError, 'first_name cannot be nil'
      end

      if first_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "first_name", the character length must be great than or equal to 1.'
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if last_name.nil?
        fail ArgumentError, 'last_name cannot be nil'
      end

      if last_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "last_name", the character length must be great than or equal to 1.'
      end

      @last_name = last_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          candidate_id == o.candidate_id &&
          qualification_id == o.qualification_id &&
          event_id == o.event_id &&
          accepted_policy_id == o.accepted_policy_id &&
          preferred_teaching_subject_id == o.preferred_teaching_subject_id &&
          consideration_journey_stage_id == o.consideration_journey_stage_id &&
          degree_status_id == o.degree_status_id &&
          email == o.email &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          address_postcode == o.address_postcode &&
          address_telephone == o.address_telephone &&
          subscribe_to_mailing_list == o.subscribe_to_mailing_list &&
          already_subscribed_to_events == o.already_subscribed_to_events &&
          already_subscribed_to_mailing_list == o.already_subscribed_to_mailing_list &&
          already_subscribed_to_teacher_training_adviser == o.already_subscribed_to_teacher_training_adviser
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [candidate_id, qualification_id, event_id, accepted_policy_id, preferred_teaching_subject_id, consideration_journey_stage_id, degree_status_id, email, first_name, last_name, address_postcode, address_telephone, subscribe_to_mailing_list, already_subscribed_to_events, already_subscribed_to_mailing_list, already_subscribed_to_teacher_training_adviser].hash
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
