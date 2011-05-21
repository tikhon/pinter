module Pinter
	class Subscription

		include HTTParty
		base_uri "http://www.pintpay.com/api/1"
		default_params :api_key => Pinter.api_key, :api_secret => Pinter.api_secret
	  format :json

		def self.all
			get "/subscriptions"
		end

		def self.find(secret)
			get "/subscriptions/#{secret}"
		end

	end
end