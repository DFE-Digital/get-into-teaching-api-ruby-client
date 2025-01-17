=begin
#Get into Teaching API - V1

# Provides a RESTful API for integrating with the Get into Teaching CRM. The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events). The GIT API aims to provide: * Simple, task-based RESTful APIs. * Message queueing (while the GIT CRM is offline for updates). * Validation to ensure consistency across services writing to the GIT CRM.                         

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'date'
require 'time'

module GetIntoTeachingApiClient
  class SchoolsExperienceSignUp
    attr_accessor :candidate_id

    attr_accessor :preferred_teaching_subject_id

    attr_accessor :secondary_preferred_teaching_subject_id

    attr_accessor :accepted_policy_id

    attr_accessor :master_id

    attr_accessor :merged

    attr_accessor :full_name

    attr_accessor :email

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :address_line1

    attr_accessor :address_line2

    attr_accessor :address_line3

    attr_accessor :address_city

    attr_accessor :address_state_or_province

    attr_accessor :address_postcode

    attr_accessor :telephone

    attr_accessor :has_dbs_certificate

    attr_accessor :dbs_certificate_issued_at

    attr_accessor :qualification_id

    attr_accessor :degree_status_id

    attr_accessor :degree_type_id

    attr_accessor :degree_subject

    attr_accessor :uk_degree_grade_id

    attr_accessor :creation_channel_source_id

    attr_accessor :creation_channel_service_id

    attr_accessor :creation_channel_activity_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'candidate_id' => :'candidateId',
        :'preferred_teaching_subject_id' => :'preferredTeachingSubjectId',
        :'secondary_preferred_teaching_subject_id' => :'secondaryPreferredTeachingSubjectId',
        :'accepted_policy_id' => :'acceptedPolicyId',
        :'master_id' => :'masterId',
        :'merged' => :'merged',
        :'full_name' => :'fullName',
        :'email' => :'email',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'address_line1' => :'addressLine1',
        :'address_line2' => :'addressLine2',
        :'address_line3' => :'addressLine3',
        :'address_city' => :'addressCity',
        :'address_state_or_province' => :'addressStateOrProvince',
        :'address_postcode' => :'addressPostcode',
        :'telephone' => :'telephone',
        :'has_dbs_certificate' => :'hasDbsCertificate',
        :'dbs_certificate_issued_at' => :'dbsCertificateIssuedAt',
        :'qualification_id' => :'qualificationId',
        :'degree_status_id' => :'degreeStatusId',
        :'degree_type_id' => :'degreeTypeId',
        :'degree_subject' => :'degreeSubject',
        :'uk_degree_grade_id' => :'ukDegreeGradeId',
        :'creation_channel_source_id' => :'creationChannelSourceId',
        :'creation_channel_service_id' => :'creationChannelServiceId',
        :'creation_channel_activity_id' => :'creationChannelActivityId'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'candidate_id' => :'String',
        :'preferred_teaching_subject_id' => :'String',
        :'secondary_preferred_teaching_subject_id' => :'String',
        :'accepted_policy_id' => :'String',
        :'master_id' => :'String',
        :'merged' => :'Boolean',
        :'full_name' => :'String',
        :'email' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'address_line1' => :'String',
        :'address_line2' => :'String',
        :'address_line3' => :'String',
        :'address_city' => :'String',
        :'address_state_or_province' => :'String',
        :'address_postcode' => :'String',
        :'telephone' => :'String',
        :'has_dbs_certificate' => :'Boolean',
        :'dbs_certificate_issued_at' => :'Time',
        :'qualification_id' => :'String',
        :'degree_status_id' => :'Integer',
        :'degree_type_id' => :'Integer',
        :'degree_subject' => :'String',
        :'uk_degree_grade_id' => :'Integer',
        :'creation_channel_source_id' => :'Integer',
        :'creation_channel_service_id' => :'Integer',
        :'creation_channel_activity_id' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'candidate_id',
        :'secondary_preferred_teaching_subject_id',
        :'master_id',
        :'full_name',
        :'address_line2',
        :'address_line3',
        :'dbs_certificate_issued_at',
        :'qualification_id',
        :'degree_status_id',
        :'degree_type_id',
        :'degree_subject',
        :'uk_degree_grade_id',
        :'creation_channel_source_id',
        :'creation_channel_service_id',
        :'creation_channel_activity_id'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `GetIntoTeachingApiClient::SchoolsExperienceSignUp` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `GetIntoTeachingApiClient::SchoolsExperienceSignUp`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'candidate_id')
        self.candidate_id = attributes[:'candidate_id']
      end

      if attributes.key?(:'preferred_teaching_subject_id')
        self.preferred_teaching_subject_id = attributes[:'preferred_teaching_subject_id']
      end

      if attributes.key?(:'secondary_preferred_teaching_subject_id')
        self.secondary_preferred_teaching_subject_id = attributes[:'secondary_preferred_teaching_subject_id']
      end

      if attributes.key?(:'accepted_policy_id')
        self.accepted_policy_id = attributes[:'accepted_policy_id']
      end

      if attributes.key?(:'master_id')
        self.master_id = attributes[:'master_id']
      end

      if attributes.key?(:'merged')
        self.merged = attributes[:'merged']
      end

      if attributes.key?(:'full_name')
        self.full_name = attributes[:'full_name']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'address_line1')
        self.address_line1 = attributes[:'address_line1']
      end

      if attributes.key?(:'address_line2')
        self.address_line2 = attributes[:'address_line2']
      end

      if attributes.key?(:'address_line3')
        self.address_line3 = attributes[:'address_line3']
      end

      if attributes.key?(:'address_city')
        self.address_city = attributes[:'address_city']
      end

      if attributes.key?(:'address_state_or_province')
        self.address_state_or_province = attributes[:'address_state_or_province']
      end

      if attributes.key?(:'address_postcode')
        self.address_postcode = attributes[:'address_postcode']
      end

      if attributes.key?(:'telephone')
        self.telephone = attributes[:'telephone']
      end

      if attributes.key?(:'has_dbs_certificate')
        self.has_dbs_certificate = attributes[:'has_dbs_certificate']
      end

      if attributes.key?(:'dbs_certificate_issued_at')
        self.dbs_certificate_issued_at = attributes[:'dbs_certificate_issued_at']
      end

      if attributes.key?(:'qualification_id')
        self.qualification_id = attributes[:'qualification_id']
      end

      if attributes.key?(:'degree_status_id')
        self.degree_status_id = attributes[:'degree_status_id']
      end

      if attributes.key?(:'degree_type_id')
        self.degree_type_id = attributes[:'degree_type_id']
      end

      if attributes.key?(:'degree_subject')
        self.degree_subject = attributes[:'degree_subject']
      end

      if attributes.key?(:'uk_degree_grade_id')
        self.uk_degree_grade_id = attributes[:'uk_degree_grade_id']
      end

      if attributes.key?(:'creation_channel_source_id')
        self.creation_channel_source_id = attributes[:'creation_channel_source_id']
      end

      if attributes.key?(:'creation_channel_service_id')
        self.creation_channel_service_id = attributes[:'creation_channel_service_id']
      end

      if attributes.key?(:'creation_channel_activity_id')
        self.creation_channel_activity_id = attributes[:'creation_channel_activity_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @preferred_teaching_subject_id.nil?
        invalid_properties.push('invalid value for "preferred_teaching_subject_id", preferred_teaching_subject_id cannot be nil.')
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

      if @address_line1.nil?
        invalid_properties.push('invalid value for "address_line1", address_line1 cannot be nil.')
      end

      if @address_city.nil?
        invalid_properties.push('invalid value for "address_city", address_city cannot be nil.')
      end

      if @address_state_or_province.nil?
        invalid_properties.push('invalid value for "address_state_or_province", address_state_or_province cannot be nil.')
      end

      if @address_postcode.nil?
        invalid_properties.push('invalid value for "address_postcode", address_postcode cannot be nil.')
      end

      if @telephone.nil?
        invalid_properties.push('invalid value for "telephone", telephone cannot be nil.')
      end

      if @has_dbs_certificate.nil?
        invalid_properties.push('invalid value for "has_dbs_certificate", has_dbs_certificate cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @preferred_teaching_subject_id.nil?
      return false if @accepted_policy_id.nil?
      return false if @email.nil?
      return false if @email.to_s.length < 1
      return false if @first_name.nil?
      return false if @first_name.to_s.length < 1
      return false if @last_name.nil?
      return false if @last_name.to_s.length < 1
      return false if @address_line1.nil?
      return false if @address_city.nil?
      return false if @address_state_or_province.nil?
      return false if @address_postcode.nil?
      return false if @telephone.nil?
      return false if @has_dbs_certificate.nil?
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
          preferred_teaching_subject_id == o.preferred_teaching_subject_id &&
          secondary_preferred_teaching_subject_id == o.secondary_preferred_teaching_subject_id &&
          accepted_policy_id == o.accepted_policy_id &&
          master_id == o.master_id &&
          merged == o.merged &&
          full_name == o.full_name &&
          email == o.email &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          address_line1 == o.address_line1 &&
          address_line2 == o.address_line2 &&
          address_line3 == o.address_line3 &&
          address_city == o.address_city &&
          address_state_or_province == o.address_state_or_province &&
          address_postcode == o.address_postcode &&
          telephone == o.telephone &&
          has_dbs_certificate == o.has_dbs_certificate &&
          dbs_certificate_issued_at == o.dbs_certificate_issued_at &&
          qualification_id == o.qualification_id &&
          degree_status_id == o.degree_status_id &&
          degree_type_id == o.degree_type_id &&
          degree_subject == o.degree_subject &&
          uk_degree_grade_id == o.uk_degree_grade_id &&
          creation_channel_source_id == o.creation_channel_source_id &&
          creation_channel_service_id == o.creation_channel_service_id &&
          creation_channel_activity_id == o.creation_channel_activity_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [candidate_id, preferred_teaching_subject_id, secondary_preferred_teaching_subject_id, accepted_policy_id, master_id, merged, full_name, email, first_name, last_name, address_line1, address_line2, address_line3, address_city, address_state_or_province, address_postcode, telephone, has_dbs_certificate, dbs_certificate_issued_at, qualification_id, degree_status_id, degree_type_id, degree_subject, uk_degree_grade_id, creation_channel_source_id, creation_channel_service_id, creation_channel_activity_id].hash
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
