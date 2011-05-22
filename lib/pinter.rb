require 'forwardable'
require 'rubygems'
require 'mash'
require 'httparty'

class APIKeyNotSet < StandardError

end

class APISecretNotSet < StandardError

end

module Pinter
  def self.api_key
    raise APIKeyNotSet if @api_key.nil?

    @api_key
  end

  def self.api_key=(api_key)
    @api_key = api_key
  end

  def self.api_secret
  	raise APISecretNotSet if @api_secret.nil?

    @api_secret
  end

  def self.api_secret=(api_secret)
  	@api_secret = api_secret
  end
end

require 'pinter/hash'
require 'pinter/base'
require 'pinter/subscription'
require 'pinter/user'