# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tapuzit/version'

Gem::Specification.new do |spec|
  spec.name          = "tapuzit"
  spec.version       = Tapuzit::VERSION
  spec.authors       = ["Steve Huff"]
  spec.email         = ["shuff@vecna.org"]

  spec.summary       = %q{Let you know when it is time to do something!}
  spec.description   = %q{Telegram bot permitting scheduling of messages to be delivered later.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "binding_of_caller", "~> 0.7"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "chronic", "~> 0.10"
  spec.add_runtime_dependency "grape", "~> 0.14"
  spec.add_runtime_dependency "hashie", "~> 3.4"
  spec.add_runtime_dependency "puma", "~> 3.1"
  spec.add_runtime_dependency "rufus-scheduler", "~> 3.2"
  spec.add_runtime_dependency "sidekiq", ">= 4.1", "< 7.0"
  spec.add_runtime_dependency "telegram-bot-ruby", "~> 0.4"
  spec.add_runtime_dependency "yell", "~> 2.0"

end
