require 'spec_helper'

class ArrayMapObject
  attr_accessor :name, :int_arr, :obj_arr, :int_map, :obj_map, :int_arr_map, :obj_arr_map, :boolean_true_arr, :boolean_false_arr

  def self.attribute_map
    {
      :name => :name,
      :int_arr => :int_arr,
      :obj_arr => :obj_arr,
      :int_map => :int_map,
      :obj_map => :obj_map,
      :int_arr_map => :int_arr_map,
      :obj_arr_map => :obj_arr_map,
      :boolean_true_arr  => :boolean_true_arr,
      :boolean_false_arr => :boolean_false_arr,
    }
  end

  def self.openapi_types
    {
      :name => :'String',
      :int_arr => :'Array<Integer>',
      :obj_arr => :'Array<ArrayMapObject>',
      :int_map => :'Hash<String, Integer>',
      :obj_map => :'Hash<String, ArrayMapObject>',
      :int_arr_map => :'Hash<String, Array<Integer>>',
      :obj_arr_map => :'Hash<String, Array<ArrayMapObject>>',
      :boolean_true_arr  => :'Array<Boolean>',
      :boolean_false_arr => :'Array<Boolean>',
    }
  end

  def self.openapi_nullable
    Set.new([])
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
      elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
        self.send("#{key}=", nil)
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
      self.class.const_get(type).build_from_hash(value)
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

describe 'BaseObject' do

  describe 'array and map properties' do
    let(:obj) { ArrayMapObject.new }

    let(:data) do
      {name: 'Test',
       int_arr: [123, 456],
       obj_arr: [{name: 'Test'}],
       int_map: {'int' => 123},
       obj_map: {'obj' => {name: 'Test'}},
       int_arr_map: {'int_arr' => [123, 456]},
       obj_arr_map: {'obj_arr' => [{name: 'Test'}]},
       boolean_true_arr:  [true, "true", "TruE", 1, "y", "yes", "1", "t", "T"],
       boolean_false_arr: [false, "", 0, "0", "f", nil, "null"],
      }
    end

    it 'works for #build_from_hash' do
      obj.build_from_hash(data)

      expect(obj.int_arr).to match_array([123, 456])

      expect(obj.obj_arr).to be_instance_of(Array)
      expect(obj.obj_arr.size).to eq(1)

      value = obj.obj_arr.first
      expect(value).to be_instance_of(ArrayMapObject)
      expect(value.name).to eq('Test')

      expect(obj.int_map).to be_instance_of(Hash)
      expect(obj.int_map).to eq({'int' => 123})

      expect(obj.obj_map).to be_instance_of(Hash)
      value = obj.obj_map['obj']
      expect(value).to be_instance_of(ArrayMapObject)
      expect(value.name).to eq('Test')

      expect(obj.int_arr_map).to be_instance_of(Hash)
      arr = obj.int_arr_map['int_arr']
      expect(arr).to match_array([123, 456])

      expect(obj.obj_arr_map).to be_instance_of(Hash)
      arr = obj.obj_arr_map['obj_arr']
      expect(arr).to be_instance_of(Array)
      expect(arr.size).to eq(1)
      value = arr.first
      expect(value).to be_instance_of(ArrayMapObject)
      expect(value.name).to eq('Test')

      expect(obj.boolean_true_arr).to be_instance_of(Array)
      obj.boolean_true_arr.each do |b|
        expect(b).to eq(true)
      end

      expect(obj.boolean_false_arr).to be_instance_of(Array)
      obj.boolean_false_arr.each do |b|
        expect(b).to eq(false)
      end
    end

    it 'works for #to_hash' do
      obj.build_from_hash(data)
      expect_data = data.dup
      expect_data[:boolean_true_arr].map! {true}
      expect_data[:boolean_false_arr].map! {false}
      expect(obj.to_hash).to eq(expect_data)
    end
  end
end
