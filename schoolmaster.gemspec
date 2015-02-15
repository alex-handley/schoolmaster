# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'schoolmaster/version'

Gem::Specification.new do |spec|
  spec.name          = "schoolmaster"
  spec.version       = Schoolmaster::VERSION
  spec.authors       = ["Alex Handley"]
  spec.email         = ["alex@seriousfox.co.uk"]
  spec.summary       = "A rake task that runs static code analysis, security " \
											 "and best practice checks and then pushes the current branch"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = ["schoolmaster"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.1.0"

  spec.add_dependency "git", "~> 1.2.6"
  spec.add_dependency "cane", "~> 2.6.0"
  spec.add_dependency "brakeman", "~> 2.6.3"
  spec.add_dependency "rails_best_practices", "~> 1.15.0"
end
