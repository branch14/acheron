# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acheron/version'

Gem::Specification.new do |spec|
  spec.name          = "acheron"
  spec.version       = Acheron::VERSION
  spec.authors       = ["phil"]
  spec.email         = ["phil@branch14.org"]
  spec.description   = %q{Listens to RabbitMQ and spams Slack.}
  spec.summary       = %q{Listens to RabbitMQ and spams Slack.}
  spec.homepage      = "http://github.com/branch14/acheron"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "trickery", "~> 0.0.4"
  spec.add_dependency "daemons"
  spec.add_dependency "bunny"
  spec.add_dependency "faraday"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
