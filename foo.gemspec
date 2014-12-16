# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foo/version'

Gem::Specification.new do |spec|
  spec.name          = "foo_shortener"
  spec.version       = Foo::VERSION
  spec.authors       = ["Juan Carlos M"]
  spec.email         = ["foo@bar.com"]
  spec.summary       = %q{"This gem does not nothing in special"}
  spec.description   = %q{"pending: make this crap works!"}
  spec.homepage      = "http://fundwise.co"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  # TDD
  spec.add_development_dependency 'minitest', '~> 5.3.3'

end
