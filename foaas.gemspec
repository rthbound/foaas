# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foaas/version'

Gem::Specification.new do |spec|
  spec.name          = "foaas"
  spec.version       = FOaaS::VERSION
  spec.authors       = ["Ryan T. Hosford"]
  spec.email         = ["tad.hosford@gmail.com"]
  spec.description   = %q{ Ruby interface to FOaaS - http://foaas.com }
  spec.summary       = %q{ Fun stuff. }
  spec.homepage      = "http://github.com/rthbound/foaas"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     "pay_dirt", "~> 1.0.7"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "coveralls"
  #spec.add_development_dependency "simplecov"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake"
end
