# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rw_depot_theme/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "rw_depot_theme"
  s.version     = RwDepotTheme::Rails::VERSION
  s.authors     = ["Jeremy Woertink"]
  s.email       = ["jeremywoertink@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Sample App theme for RubyWeekend}
  s.description = %q{This gem will speed up development for RubyWeekend by including images, and pre-mad styles and scripts}

  s.rubyforge_project = "rw_depot_theme"
  
  s.add_dependency "railties", ">= 3.1.0"
  s.add_dependency "thor", "~> 0.14"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
