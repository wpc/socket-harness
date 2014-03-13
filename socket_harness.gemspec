# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'socket_harness/version'

Gem::Specification.new do |spec|
  spec.name          = "socket-harness"
  spec.version       = SocketHarness::VERSION
  spec.authors       = ["wpc"]
  spec.email         = ["alex.hal9000@gmail.com"]
  spec.summary       = %q{Proxy for socket test harness.}
  spec.description   = %q{Proxy for socket test harness.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
