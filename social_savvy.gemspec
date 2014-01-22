# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'social_savvy/version'

Gem::Specification.new do |spec|
  spec.name          = "SocialSavvy"
  spec.version       = SocialSavvy::VERSION
  spec.authors       = ["Nikhil Taneja"]
  spec.email         = ["nikhil.a.taneja@gmail.com"]
  spec.summary       = "Wrapper gem for SocialSmarts API"
  spec.description   = ""
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency "faraday"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "vcr"
  spec.add_dependency "hashie"
end
