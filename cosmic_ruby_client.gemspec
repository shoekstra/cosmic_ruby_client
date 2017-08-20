# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cosmic_ruby_client/version'

Gem::Specification.new do |gem|
  gem.name          = "cosmic_ruby_client"
  gem.version       = CloudstackRubyClient::VERSION
  gem.authors       = ["Chip Childers"]
  gem.email         = ["chip.childers@gmail.com"]
  gem.description   = %q{A Ruby client for CloudStack's API, including a simple CLI.}
  gem.summary       = %q{A Ruby client for CloudStack's API.}
  gem.homepage      = "http://chipchilders.github.io/cosmic_ruby_client/"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
