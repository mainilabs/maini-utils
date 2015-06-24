# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maini/utils/version'

Gem::Specification.new do |spec|
  spec.name          = "maini-utils"
  spec.version       = Maini::Utils::VERSION
  spec.authors       = ["Marcos Junior"]
  spec.email         = ["marcos@maini.com.br"]

  spec.summary       = "Gem with Maini utils"
  spec.description   = "This gem contains Maini libs utils"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://rubygems.agivis.com.br"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "rack-test"

  spec.add_dependency "activesupport"

end
