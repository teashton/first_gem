
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "first_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "first_gem"
  spec.version       = FirstGem::VERSION
  spec.authors       = ["Thomas Ashton"]
  spec.email         = ["teashton@gmail.com"]

  spec.summary       = "This is my first practice gem."
  spec.homepage      = "https://github.com/teashton/first_gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
end

