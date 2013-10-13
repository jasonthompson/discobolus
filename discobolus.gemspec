# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'discobolus/version'

Gem::Specification.new do |spec|
  spec.name          = "discobolus"
  spec.version       = Discobolus::VERSION
  spec.authors       = ["Jason Thompson"]
  spec.email         = ["jason@jthompson.ca"]
  spec.description   = %q{Fetches metadata for a cd}
  spec.summary       = %q{Fetches metadata for a cd from discogs.}
  spec.homepage      = "https://github.com/jasonthompson/discobolus"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "discogs-wrapper"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
