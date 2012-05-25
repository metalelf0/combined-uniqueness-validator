require 'active_model'
require File.join(File.dirname(__FILE__), 'active_model', 'validations', 'helper_methods')

class CombinedUniquenessValidator < ActiveModel::Validator

  def initialize options
    super
    @fields = options[:fields] || []
  end

  def validate record
    current_object_values = {}
    @fields.each do |field|
      current_object_values[field] = record.send(field)
    end
    record.errors.add(:base, "Duplicate entry") if record.class.send(:where, current_object_values).present?
  end

end

