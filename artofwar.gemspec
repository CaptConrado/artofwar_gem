# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'artofwar/version'

Gem::Specification.new do |spec|
  spec.name          = "artofwar"
  spec.version       = Artofwar::VERSION
  spec.authors       = ["Conrad Ottey"]
  spec.email         = ["ottey001@gmail.com"]
  spec.description   = %q{Art of War lorem ipsum generator.}
  spec.summary       = %q{simply generates Sun Tsu's art of war loren ipsum text }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
