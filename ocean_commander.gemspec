# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ocean_commander/version'

Gem::Specification.new do |spec|
  spec.name          = "ocean_commander"
  spec.version       = OceanCommander::VERSION
  spec.authors       = ["Ming Liu"]
  spec.email         = ["liuming@lmws.net"]
  spec.description   = %q{Command line tool to manage your Digital Ocean's resources}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/liuming/ocean_commander"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", ">= 0.19.1"
  spec.add_dependency "digital_ocean", ">= 1.3.0"
  spec.add_dependency "table_print", ">= 1.5.1"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">=2.14.1"
end
