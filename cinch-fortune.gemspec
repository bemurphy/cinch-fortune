# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cinch/plugins/fortune/version"

Gem::Specification.new do |s|
  s.name        = "cinch-fortune"
  s.version     = Cinch::Fortune::VERSION
  s.authors     = ["Brendon Murphy"]
  s.email       = ["xternal1+github@gmail.com"]
  s.homepage    = "https://github.com/bemurphy/cinch-fortune"
  s.summary     = %q{Unix style fortunes to users for IRC.}
  s.description = s.summary

  s.rubyforge_project = "cinch-fortune"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "cinch"
  s.add_dependency "fortune_gem"
end
