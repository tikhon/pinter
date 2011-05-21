module Pinter
	class Subscription

		include HTTParty
		base_uri = "http://www.pintpay.com/api/1"
		default_params :output => 'json'
	  format :json

	  attr_reader :api_key, :api_secret

		def initialize
			@api_key = Pinter.api_key
			@api_secret = Pinter.api_secret
		end

		def self.list

		end

	end
end