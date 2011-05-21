# -*- encoding: utf-8 -*-
require File.expand_path("../lib/pinter/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "pinter"
  s.version     = Pinter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nathan Borgo"]
  s.email       = ["nathan@subtractiv.com"]
  s.homepage    = "http://rubygems.org/gems/pinter"
  s.summary     = "Wrapper for PintPay's API"
  s.description = "A wrapper for PintPay's payment API and webhooks"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "pinter"

  s.add_development_dependency "bundler", ">= 1.0.0.rc.6"

  s.add_dependency 'hashie', '>= 1.0.0'
  s.add_dependency 'httparty', '>= 0.7.7'

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
