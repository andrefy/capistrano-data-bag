# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/data_bag/version'

Gem::Specification.new do |gem|
  gem.name        = 'capistrano-data-bag'
  gem.version     = Capistrano::DataBag::VERSION.dup
  gem.author      = 'Omer Gazit'
  gem.email       = 'omer.misc@gmail.com'
  gem.homepage    = 'https://github.com/omerisimo/capistrano-data-bag'
  gem.summary     = %q{Data bags support for Capistrano}
  gem.description = %q{Capistrano plugin that allows to use data bags in a recipe.}

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.require_paths = ['lib']

  gem.add_dependency "capistrano", ">= 3.1"
  gem.add_development_dependency "rake"
end
