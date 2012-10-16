# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xdg/version'

Gem::Specification.new do |gem|
  gem.name          = "speartail-xdg"
  gem.version       = XDG::VERSION
  gem.authors       = ["Trans (RubyWorks)"]
  gem.email         = ["transfire@gmail.com"]
  gem.description   = %q{XDG provides an interface for using XDG directory standard.}
  gem.summary       = %q{XDG provides an interface for using XDG directory standard.}
  gem.homepage      = "http://rubyworks.github.com/xdg"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'detroit'
  gem.add_development_dependency 'qed'
end
