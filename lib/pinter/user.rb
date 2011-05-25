module Pinter
  class User

    include Base

    attr_reader :email, :identifier, :name, :created_at

    def initialize(attributes)
      set_instance_variables_from_hash attributes
    end

  end
end