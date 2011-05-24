module Pinter
  class Subscription

    include HTTParty
    include Base
    base_uri "http://www.pintpay.com/api/1"
    # default_params :api_key => Pinter.api_key, :api_secret => Pinter.api_secret
    format :json

    attr_reader :first_name, :last_name, :recurring, :secret, :user, :product, :created_at

    def initialize(attributes)
      set_instance_variables_from_hash attributes
      @user = Pinter::User.new attributes["user"]
      @product = Pinter::Product.new attributes["product"]
    end

    def self.all
      collection = []
      raw = get "/subscriptions", :query => { :api_key => Pinter.api_key, :api_secret => Pinter.api_secret }

      raw.to_a
      raw.each do |attributes|
        obj = Pinter::Subscription.new attributes
        collection << obj
      end

      return collection
    end

    def self.find(secret)
      sub = get "/subscriptions/#{secret}", :query => { :api_key => Pinter.api_key, :api_secret => Pinter.api_secret }
      sub = sub.parsed_response
      sub.to_subscription
    end

  end
end