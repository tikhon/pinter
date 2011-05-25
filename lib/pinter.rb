require 'rubygems'
require 'httparty'

class APIKeyNotSet < StandardError

end

class APISecretNotSet < StandardError

end

module Pinter
  def self.api_key
    # raise APIKeyNotSet if @api_key.nil?

    @api_key
  end

  def self.api_key=(api_key)
    @api_key = api_key
  end

  def self.api_secret
  	# raise APISecretNotSet if @api_secret.nil?

    @api_secret
  end

  def self.api_secret=(api_secret)
  	@api_secret = api_secret
  end

  def self.subdomain
    @subdomain
  end

  def self.subdomain=(subdomain)
    @subdomain = subdomain
  end

  def self.url(options = {})
    url = "https://#{Pinter.subdomain}.pintpay.com/"
    url << "?#{options.to_params}" unless options.empty?
    url
  end
end

require 'pinter/hash'
require 'pinter/base'
require 'pinter/subscription'
require 'pinter/user'
require 'pinter/product'