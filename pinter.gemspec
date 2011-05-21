# -*- encoding: utf-8 -*-
require File.expand_path("../lib/pinter/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "Pinter"
  s.version     = Pinter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = []
  s.email       = []
  s.homepage    = "http://rubygems.org/gems/pinter"
  s.summary     = "A wrapper for PintPay's API"
  s.description = "TODO: Write a gem description"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "pinter"

  s.add_development_dependency "bundler", ">= 1.0.0.rc.6"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
