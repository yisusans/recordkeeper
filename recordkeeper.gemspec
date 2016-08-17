# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'recordkeeper/version'

Gem::Specification.new do |spec|
  spec.name          = "recordkeeper"
  spec.version       = Recordkeeper::VERSION
  spec.authors       = ["Susan Yi"]
  spec.email         = ["yi.susans@gmail.com"]

  spec.summary       = %q{Recordkeeper is an array method that takes an array and returns a hash with a record of the times an element within the array is repeated.}
  spec.description   = %q{Built to mimic Python's counter method.  This gem monkey patches a method to the Array class. Recordkeeper takes an array and returns a hash with a record of the number of times an element within the array is repeated}
  # spec.homepage      = "Todo: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "todo: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
