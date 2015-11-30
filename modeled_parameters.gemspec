# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'modeled_parameters/version'

Gem::Specification.new do |spec|
  spec.name          = "modeled_parameters"
  spec.version       = ModeledParameters::VERSION
  spec.authors       = ["Miguel Herranz"]
  spec.email         = ["miguel@ipglider.org"]

  spec.summary       = %q{Parameters modeled as objects for Rails.}
  spec.description   = %q{ModeledParameters is a library for Rails applications that allows to model input parameters as objects.}
  spec.homepage      = "https://github.com/IPGlider/modeled_parameters"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activemodel', '>= 4.2.0'
  spec.add_runtime_dependency 'actionpack', '>= 4.2.0'
  spec.add_runtime_dependency 'activesupport', '>= 4.2.0'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
