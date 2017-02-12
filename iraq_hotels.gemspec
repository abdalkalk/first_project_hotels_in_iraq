# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hotels_in_iraq/version'

Gem::Specification.new do |spec|
  spec.name          = "iraq_hotels"
  spec.version       = IraqHotels::VERSION
  spec.authors       = ["Abdulkhaleq"]
  spec.email         = ["eng.abdalkalk@gmail.com"]

  spec.summary       = "show the hotels in two cities"
  spec.homepage      = "https://github.com/abdalkalk/first_project_hotels_in_iraq"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = "hotels_in_iraq"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
