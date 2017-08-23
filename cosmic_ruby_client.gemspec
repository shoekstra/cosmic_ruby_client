# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cosmic_ruby_client/version'

Gem::Specification.new do |gem|
  gem.name          = 'cosmic_ruby_client'
  gem.version       = CosmicRubyClient::VERSION
  gem.authors       = ['Daan de Goede']
  gem.email         = ['ddegoede@schubergphilis.com']
  gem.description   = %q{A Ruby client for Cosmic's API, including a simple CLI.}
  gem.summary       = %q{A Ruby client for Cosmic's API.}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
