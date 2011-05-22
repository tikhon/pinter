module Pinter
  class Subscription

    include HTTParty
    base_uri "http://www.pintpay.com/api/1"
    default_params :api_key => Pinter.api_key, :api_secret => Pinter.api_secret
    format :json

    attr_reader :first_name, :last_name, :recurring, :secret, :user, :product, :created_at

    def initialize(hash)
      @first_name = hash["first_name"]
      @last_name = hash["last_name"]
      @recurring = hash["recurring"]
      @secret = hash["secret"]
    end

    def self.all
      all = get "/subscriptions"
      all.to_a
    end

    def self.find(secret)
      sub = get "/subscriptions/#{secret}"
      sub = sub.parsed_response
      sub.to_subscription
    end

  end
end