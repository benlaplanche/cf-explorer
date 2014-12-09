# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cf/explorer/version'

Gem::Specification.new do |spec|
  spec.name          = "cf-explorer"
  spec.version       = CF::Explorer::VERSION
  spec.authors       = ["Ben Laplanche"]
  spec.email         = ["ben@laplanche.co.uk"]
  spec.summary       = %q{Explore the Cloud Foundry Data Model}
  spec.description   = %q{Ruby Gem to explore the Cloud Foundry Data Model, for the authenticated UAA user}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "cf-uaa-lib", "3.1.0"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
end
