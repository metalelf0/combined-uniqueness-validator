module ActiveModel
	module Validations
		module HelperMethods

			def validate_combined_uniqueness_of *fields
				validates_with CombinedUniquenessValidator, :fields => fields
			end

		end
	end
end
