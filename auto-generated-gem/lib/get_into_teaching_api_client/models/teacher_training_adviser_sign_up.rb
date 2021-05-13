=begin
#Get into Teaching API - V1

#  Provides a RESTful API for integrating with the Get into Teaching CRM.    The Get into Teaching (GIT) API sits in front of the GIT CRM, which uses the [Microsoft Dynamics365](https://docs.microsoft.com/en-us/dynamics365/) platform (the [Customer Engagement](https://docs.microsoft.com/en-us/dynamics365/customerengagement/on-premises/developer/overview) module is used for storing Candidate information and the [Marketing](https://docs.microsoft.com/en-us/dynamics365/marketing/developer/using-events-api) module for managing Events).    The GIT API aims to provide:    * Simple, task-based RESTful APIs.  * Message queueing (while the GIT CRM is offline for updates).  * Validation to ensure consistency across services writing to the GIT CRM.                          

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module GetIntoTeachingApiClient
  class TeacherTrainingAdviserSignUp
    attr_accessor :candidate_id

    attr_accessor :qualification_id

    attr_accessor :subject_taught_id

    attr_accessor :past_teaching_position_id

    attr_accessor :preferred_teaching_subject_id

    attr_accessor :country_id

    attr_accessor :accepted_policy_id

    attr_accessor :type_id

    attr_accessor :uk_degree_grade_id

    attr_accessor :degree_status_id

    attr_accessor :degree_type_id

    attr_accessor :initial_teacher_training_year_id

    attr_accessor :preferred_education_phase_id

    attr_accessor :has_gcse_maths_and_english_id

    attr_accessor :has_gcse_science_id

    attr_accessor :planning_to_retake_gcse_maths_and_english_id

    attr_accessor :planning_to_retake_gcse_science_id

    attr_accessor :email

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :date_of_birth

    attr_accessor :teacher_id

    attr_accessor :degree_subject

    attr_accessor :telephone

    attr_accessor :address_telephone

    attr_accessor :address_line1

    attr_accessor :address_line2

    attr_accessor :address_city

    attr_accessor :address_postcode

    attr_accessor :phone_call_scheduled_at

    attr_accessor :already_subscribed_to_teacher_training_adviser

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'candidate_id' => :'candidateId',
        :'qualification_id' => :'qualificationId',
        :'subject_taught_id' => :'subjectTaughtId',
        :'past_teaching_position_id' => :'pastTeachingPositionId',
        :'preferred_teaching_subject_id' => :'preferredTeachingSubjectId',
        :'country_id' => :'countryId',
        :'accepted_policy_id' => :'acceptedPolicyId',
        :'type_id' => :'typeId',
        :'uk_degree_grade_id' => :'ukDegreeGradeId',
        :'degree_status_id' => :'degreeStatusId',
        :'degree_type_id' => :'degreeTypeId',
        :'initial_teacher_training_year_id' => :'initialTeacherTrainingYearId',
        :'preferred_education_phase_id' => :'preferredEducationPhaseId',
        :'has_gcse_maths_and_english_id' => :'hasGcseMathsAndEnglishId',
        :'has_gcse_science_id' => :'hasGcseScienceId',
        :'planning_to_retake_gcse_maths_and_english_id' => :'planningToRetakeGcseMathsAndEnglishId',
        :'planning_to_retake_gcse_science_id' => :'planningToRetakeGcseScienceId',
        :'email' => :'email',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'date_of_birth' => :'dateOfBirth',
        :'teacher_id' => :'teacherId',
        :'degree_subject' => :'degreeSubject',
        :'telephone' => :'telephone',
        :'address_telephone' => :'addressTelephone',
        :'address_line1' => :'addressLine1',
        :'address_line2' => :'addressLine2',
        :'address_city' => :'addressCity',
        :'address_postcode' => :'addressPostcode',
        :'phone_call_scheduled_at' => :'phoneCallScheduledAt',
        :'already_subscribed_to_teacher_training_adviser' => :'alreadySubscribedToTeacherTrainingAdviser'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'candidate_id' => :'String',
        :'qualification_id' => :'String',
        :'subject_taught_id' => :'String',
        :'past_teaching_position_id' => :'String',
        :'preferred_teaching_subject_id' => :'String',
        :'country_id' => :'String',
        :'accepted_policy_id' => :'String',
        :'type_id' => :'Integer',
        :'uk_degree_grade_id' => :'Integer',
        :'degree_status_id' => :'Integer',
        :'degree_type_id' => :'Integer',
        :'initial_teacher_training_year_id' => :'Integer',
        :'preferred_education_phase_id' => :'Integer',
        :'has_gcse_maths_and_english_id' => :'Integer',
        :'has_gcse_science_id' => :'Integer',
        :'planning_to_retake_gcse_maths_and_english_id' => :'Integer',
        :'planning_to_retake_gcse_science_id' => :'Integer',
        :'email' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'date_of_birth' => :'Date',
        :'teacher_id' => :'String',
        :'degree_subject' => :'String',
        :'telephone' => :'String',
        :'address_telephone' => :'String',
        :'address_line1' => :'String',
        :'address_line2' => :'String',
        :'address_city' => :'String',
        :'address_postcode' => :'String',
        :'phone_call_scheduled_at' => :'DateTime',
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

      if attributes.has_key?(:'subjectTaughtId')
        self.subject_taught_id = attributes[:'subjectTaughtId']
      end

      if attributes.has_key?(:'pastTeachingPositionId')
        self.past_teaching_position_id = attributes[:'pastTeachingPositionId']
      end

      if attributes.has_key?(:'preferredTeachingSubjectId')
        self.preferred_teaching_subject_id = attributes[:'preferredTeachingSubjectId']
      end

      if attributes.has_key?(:'countryId')
        self.country_id = attributes[:'countryId']
      end

      if attributes.has_key?(:'acceptedPolicyId')
        self.accepted_policy_id = attributes[:'acceptedPolicyId']
      end

      if attributes.has_key?(:'typeId')
        self.type_id = attributes[:'typeId']
      end

      if attributes.has_key?(:'ukDegreeGradeId')
        self.uk_degree_grade_id = attributes[:'ukDegreeGradeId']
      end

      if attributes.has_key?(:'degreeStatusId')
        self.degree_status_id = attributes[:'degreeStatusId']
      end

      if attributes.has_key?(:'degreeTypeId')
        self.degree_type_id = attributes[:'degreeTypeId']
      end

      if attributes.has_key?(:'initialTeacherTrainingYearId')
        self.initial_teacher_training_year_id = attributes[:'initialTeacherTrainingYearId']
      end

      if attributes.has_key?(:'preferredEducationPhaseId')
        self.preferred_education_phase_id = attributes[:'preferredEducationPhaseId']
      end

      if attributes.has_key?(:'hasGcseMathsAndEnglishId')
        self.has_gcse_maths_and_english_id = attributes[:'hasGcseMathsAndEnglishId']
      end

      if attributes.has_key?(:'hasGcseScienceId')
        self.has_gcse_science_id = attributes[:'hasGcseScienceId']
      end

      if attributes.has_key?(:'planningToRetakeGcseMathsAndEnglishId')
        self.planning_to_retake_gcse_maths_and_english_id = attributes[:'planningToRetakeGcseMathsAndEnglishId']
      end

      if attributes.has_key?(:'planningToRetakeGcseScienceId')
        self.planning_to_retake_gcse_science_id = attributes[:'planningToRetakeGcseScienceId']
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

      if attributes.has_key?(:'dateOfBirth')
        self.date_of_birth = attributes[:'dateOfBirth']
      end

      if attributes.has_key?(:'teacherId')
        self.teacher_id = attributes[:'teacherId']
      end

      if attributes.has_key?(:'degreeSubject')
        self.degree_subject = attributes[:'degreeSubject']
      end

      if attributes.has_key?(:'telephone')
        self.telephone = attributes[:'telephone']
      end

      if attributes.has_key?(:'addressTelephone')
        self.address_telephone = attributes[:'addressTelephone']
      end

      if attributes.has_key?(:'addressLine1')
        self.address_line1 = attributes[:'addressLine1']
      end

      if attributes.has_key?(:'addressLine2')
        self.address_line2 = attributes[:'addressLine2']
      end

      if attributes.has_key?(:'addressCity')
        self.address_city = attributes[:'addressCity']
      end

      if attributes.has_key?(:'addressPostcode')
        self.address_postcode = attributes[:'addressPostcode']
      end

      if attributes.has_key?(:'phoneCallScheduledAt')
        self.phone_call_scheduled_at = attributes[:'phoneCallScheduledAt']
      end

      if attributes.has_key?(:'alreadySubscribedToTeacherTrainingAdviser')
        self.already_subscribed_to_teacher_training_adviser = attributes[:'alreadySubscribedToTeacherTrainingAdviser']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @country_id.nil?
        invalid_properties.push('invalid value for "country_id", country_id cannot be nil.')
      end

      if @accepted_policy_id.nil?
        invalid_properties.push('invalid value for "accepted_policy_id", accepted_policy_id cannot be nil.')
      end

      if @type_id.nil?
        invalid_properties.push('invalid value for "type_id", type_id cannot be nil.')
      end

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @first_name.nil?
        invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
      end

      if @last_name.nil?
        invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
      end

      if @date_of_birth.nil?
        invalid_properties.push('invalid value for "date_of_birth", date_of_birth cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @country_id.nil?
      return false if @accepted_policy_id.nil?
      return false if @type_id.nil?
      return false if @email.nil?
      return false if @first_name.nil?
      return false if @last_name.nil?
      return false if @date_of_birth.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          candidate_id == o.candidate_id &&
          qualification_id == o.qualification_id &&
          subject_taught_id == o.subject_taught_id &&
          past_teaching_position_id == o.past_teaching_position_id &&
          preferred_teaching_subject_id == o.preferred_teaching_subject_id &&
          country_id == o.country_id &&
          accepted_policy_id == o.accepted_policy_id &&
          type_id == o.type_id &&
          uk_degree_grade_id == o.uk_degree_grade_id &&
          degree_status_id == o.degree_status_id &&
          degree_type_id == o.degree_type_id &&
          initial_teacher_training_year_id == o.initial_teacher_training_year_id &&
          preferred_education_phase_id == o.preferred_education_phase_id &&
          has_gcse_maths_and_english_id == o.has_gcse_maths_and_english_id &&
          has_gcse_science_id == o.has_gcse_science_id &&
          planning_to_retake_gcse_maths_and_english_id == o.planning_to_retake_gcse_maths_and_english_id &&
          planning_to_retake_gcse_science_id == o.planning_to_retake_gcse_science_id &&
          email == o.email &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          date_of_birth == o.date_of_birth &&
          teacher_id == o.teacher_id &&
          degree_subject == o.degree_subject &&
          telephone == o.telephone &&
          address_telephone == o.address_telephone &&
          address_line1 == o.address_line1 &&
          address_line2 == o.address_line2 &&
          address_city == o.address_city &&
          address_postcode == o.address_postcode &&
          phone_call_scheduled_at == o.phone_call_scheduled_at &&
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
      [candidate_id, qualification_id, subject_taught_id, past_teaching_position_id, preferred_teaching_subject_id, country_id, accepted_policy_id, type_id, uk_degree_grade_id, degree_status_id, degree_type_id, initial_teacher_training_year_id, preferred_education_phase_id, has_gcse_maths_and_english_id, has_gcse_science_id, planning_to_retake_gcse_maths_and_english_id, planning_to_retake_gcse_science_id, email, first_name, last_name, date_of_birth, teacher_id, degree_subject, telephone, address_telephone, address_line1, address_line2, address_city, address_postcode, phone_call_scheduled_at, already_subscribed_to_teacher_training_adviser].hash
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
