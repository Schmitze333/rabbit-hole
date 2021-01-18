# frozen_string_literal: true

require_relative 'lib/rabbit_hole/version'

Gem::Specification.new do |spec|
  spec.name          = 'rabbit_hole'
  spec.version       = RabbitHole::VERSION
  spec.authors       = ['Marc Schmitz']
  spec.email         = ['marcschmitz333@gmail.com']

  spec.summary       = 'Mock RabbitMQ interaction with bunny'
  spec.description   = 'Mock RabbitMQ interaction with bunny'
  spec.homepage      = 'https://github.com/Schmitze333/rabbit-hole'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.0.0')

  spec.metadata['allowed_push_host'] = 'http://mygemserver.com'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Schmitze333/rabbit-hole'
  spec.metadata['changelog_uri'] = 'https://github.com/Schmitze333/rabbit-hole/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'bunny', '~> 2.17'
end
