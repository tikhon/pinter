module Pinter
  class Subscription

    include HTTParty
    base_uri "http://www.pintpay.com/api/1"
    default_params :api_key => Pinter.api_key, :api_secret => Pinter.api_secret
    format :json

    attr_reader :first_name, :last_name, :recurring, :secret, :user, :product

    def self.all
      all = get "/subscriptions"
      all.to_a
    end

    def self.find(secret)
      subscription = get "/subscriptions/#{secret}"
      subscription.parsed_response
    end

  end
end