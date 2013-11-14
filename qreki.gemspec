# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qreki/version'

Gem::Specification.new do |spec|
  spec.name          = "qreki"
  spec.version       = Qreki::VERSION
  spec.authors       = ["Masaki Ozawa"]
  spec.email         = ["ozamasa123@gmail.com"]
  spec.description   = %q{qreki}
  spec.summary       = %q{qreki}
  spec.homepage      = "https://github.com/ozamasa/qreki"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
