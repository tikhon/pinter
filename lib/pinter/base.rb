module Pinter
  module Base

    def set_instance_variables_from_hash(hash)
      hash.each do |key, value|
        instance_variable_set "@#{key}", value
      end
    end

  end
end