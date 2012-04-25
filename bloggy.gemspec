# -*- encoding: utf-8 -*-
require File.expand_path('../lib', __FILE__)
require "bloggy/version"

Gem::Specification.new do |s|
  s.authors       = ["Zach Bruhnke"]
  s.email         = ["z@zbruhnke.com"]
  s.description   = %q{Jekyll blog for existing Rails application}
  s.summary       = %q{generate jekyll blog within a rails apps}
  s.homepage      = ""

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

  s.add_dependency "jekyll"
  s.add_dependency "rdiscount"
  s.add_dependency "rails"

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

  # = MANIFEST =
  s.files = %w[
    Gemfile
    Rakefile
    bloggy.gemspec
    lib/generators/jekyll/blog/USAGE
    lib/generators/jekyll/blog/blog_generator.rb
    lib/generators/jekyll/blog/templates/config/jekyll/_config.yml.tt
    lib/generators/jekyll/blog/templates/config/jekyll/_layouts/default.html.tt
    lib/generators/jekyll/blog/templates/config/jekyll/_layouts/page.html.tt
    lib/generators/jekyll/blog/templates/config/jekyll/_layouts/post.html.tt
    lib/generators/jekyll/blog/templates/config/jekyll/_posts/2012-04-25-a-test-post.markdown.tt
    lib/generators/jekyll/blog/templates/config/jekyll/about.html.tt
    lib/generators/jekyll/blog/templates/config/jekyll/atom.xml.tt
    lib/generators/jekyll/blog/templates/config/jekyll/index.html.tt
    lib/bloggy.rb
    lib/bloggy/version.rb
    test/helper.rb
    test/test_generate_blog.rb
  ]
  # = MANIFEST =
  
end
