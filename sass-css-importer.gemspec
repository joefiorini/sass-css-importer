# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sass/css_importer/version"

Gem::Specification.new do |s|
  s.name        = "sass-css-importer-load-paths"
  s.version     = Sass::CssImporter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Joe Fiorini"]
  s.email       = ["joe@joefiorini.com"]
  s.homepage    = "http://www.joefiorini.com"
  s.summary     = %q{Allows importing of css files using Sass @import directives.}
  s.description = %q{Allows importing of css files using Sass @import directives. Fixes original Chris Eppstein version with support for additional load paths.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'sass', '>= 3.1'

end
