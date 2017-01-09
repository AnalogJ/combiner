# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'combiner/version'

Gem::Specification.new do |spec|
  spec.name          = "combiner"
  spec.version       = Combiner::VERSION
  spec.authors       = ["Jason Kulatunga"]
  spec.email         = ["jk17@ualberta.ca"]

  spec.summary       = 'Hierarchical ruby configuration with files, environment variables, command-line arguments, and atomic object merging. nconf for ruby'
  spec.description   = "Hierarchical ruby configuration with files, environment variables, command-line arguments, and atomic object merging. nconf for ruby"
  spec.homepage      = "https://github.com/AnalogJ/combiner"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
