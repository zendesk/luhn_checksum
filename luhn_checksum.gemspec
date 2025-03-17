# frozen_string_literal: true

require_relative 'lib/luhn_checksum/version'

Gem::Specification.new do |gem|
  gem.authors       = ['Eric Chapweske', 'Gary Grossman']
  gem.email         = ['ggrossman@zendesk.com']
  gem.description   = 'Efficient Luhn checksum validator'
  gem.summary       = 'Efficient Luhn checksum validator'
  gem.homepage      = 'https://github.com/zendesk/luhn_checksum'
  gem.required_ruby_version = '>= 3.1'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'luhn_checksum'
  gem.version       = LuhnChecksum::VERSION

  gem.add_development_dependency('bump')
  gem.add_development_dependency('bundler')
  gem.add_development_dependency('rake')
end
