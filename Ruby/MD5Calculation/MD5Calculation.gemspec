# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'MD5Calculation/version'

Gem::Specification.new do |spec|
  spec.name          = "MD5Calculation"
  spec.version       = MD5Calculation::VERSION
  spec.authors       = ["9cc9"]
  spec.email         = ["cyx199021@163.com"]
  spec.description   = %q{An example of file md5 calculation for ruby.}
  spec.summary       = %q{File md5 calculation.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
