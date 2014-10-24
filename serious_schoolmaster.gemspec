# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'serious_schoolmaster/version'

Gem::Specification.new do |spec|
  spec.name          = "serious_schoolmaster"
  spec.version       = SeriousSchoolmaster::VERSION
  spec.authors       = ["Alex Handley"]
  spec.email         = ["alex@seriousfox.co.uk"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_dependency "git", "~> 1.2.6"
  spec.add_dependency "cane", "~> 2.6.0"
  spec.add_dependency "brakeman", "~> 2.6.3"
  spec.add_dependency "rails_best_practices", "~> 1.15.0"
end
