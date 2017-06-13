# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'similarweb/version'

Gem::Specification.new do |spec|
  spec.name          = 'similarweb2.0'
  spec.version       = Similarweb::VERSION
  spec.authors       = ['Harsh Vardhan Sharma']
  spec.email         = ['bonnyharsh1993@gmail.com']
  spec.summary       = %q{Ruby wrapper for Similarweb API}
  spec.description   = %q{Ruby wrapper for Similarweb API}
  spec.homepage      = 'https://github.com/harshvardhansharma/similarweb2.0'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'

  spec.add_runtime_dependency 'faraday'
  spec.add_runtime_dependency 'faraday_middleware'
end
