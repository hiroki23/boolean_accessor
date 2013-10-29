# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boolean_accessor/version'

Gem::Specification.new do |spec|
  spec.name          = "boolean_accessor"
  spec.version       = BooleanAccessor::VERSION
  spec.authors       = ["Hiroki Fujita"]
  spec.email         = ["hiroki.fujita@gmail.com"]
  spec.description   = %q{Add question methods to boolean attributes}
  spec.summary       = %q{Add question methods to boolean attributes}
  spec.homepage      = "https://github.com/hiroki23/boolean_accessor"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
