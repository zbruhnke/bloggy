# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bloggy/version"

Gem::Specification.new do |s|
  s.authors       = ["Zach Bruhnke", "Eric Theise"]
  s.email         = ["z@zbruhnke.com", "erictheise@gmail.com"]
  s.description   = %q{Add a Jekyll blog to an existing Rails application in seconds}
  s.summary       = %q{generate a jekyll blog within a rails application quickly and easily. No additional nginx config required}
  s.homepage      = "http://github.com/zbruhnke/bloggy"

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.name          = "bloggy"
  s.require_paths = ["lib"]
  s.version       = Bloggy::VERSION
  
  s.rubyforge_project = "bloggy"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "jekyll", "~> 1.1.2"
  s.add_dependency "rdiscount"
  s.add_dependency "rails"
  s.add_dependency "rack-contrib"

  s.add_development_dependency('rake', "~> 0.9")
  s.add_development_dependency('rdoc', "~> 3.11")
  s.add_development_dependency('redgreen', "~> 1.2")
  s.add_development_dependency('shoulda', "~> 2.11")
  s.add_development_dependency('rr', "~> 1.0")
  s.add_development_dependency('cucumber', "1.1")
  s.add_development_dependency('RedCloth', "~> 4.2")
  s.add_development_dependency('rdiscount', "~> 1.6")
  s.add_development_dependency('redcarpet', "~> 1.9")

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  
end
