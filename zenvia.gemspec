# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zenvia/version'

Gem::Specification.new do |spec|
  spec.name          = "zenvia"
  spec.version       = Zenvia::VERSION
  spec.authors       = ["Parafuzo Core Team"]
  spec.email         = ["dev@parafuzo.com"]
  spec.summary       = %q{Zenvia Ruby Library}
  spec.description   = %q{Ruby version API to send sms with Zenvia}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler" , "~> 1.7"
  spec.add_development_dependency "rake"    , "~> 10.0"

  spec.add_runtime_dependency "patron"       , "~> 0.4.18"
  spec.add_runtime_dependency "enumerate_it" , "~> 1.2.3"
  spec.add_runtime_dependency "i18n"         , "~> 0.7"
  spec.add_runtime_dependency "activesupport", "~> 4.1.9"
end
