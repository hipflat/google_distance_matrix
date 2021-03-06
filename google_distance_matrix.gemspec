# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_distance_matrix/version'

Gem::Specification.new do |spec|
  spec.name          = "google_distance_matrix"
  spec.version       = GoogleDistanceMatrix::VERSION
  spec.authors       = ["Thorbjørn Hermansen"]
  spec.email         = ["thhermansen@gmail.com"]
  spec.description   = %q{Ruby client for The Google Distance Matrix API}
  spec.summary       = %q{Ruby client for The Google Distance Matrix API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 4.1.5"
  spec.add_dependency "activemodel", ">= 4.1.5"
  spec.add_dependency "google_business_api_url_signer", "~> 0.0.2"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec", "~> 2.13"
  spec.add_development_dependency "shoulda-matchers", "~> 2.0.0"
  spec.add_development_dependency "webmock", "~> 1.11"
  spec.add_development_dependency "rake"
end
