module Pinter
  class Product

    include Base

    attr_reader :name, :price_in_cents, :recurring, :created_at

    def initialize(attributes)
      set_instance_variables_from_hash attributes
    end

  end
end