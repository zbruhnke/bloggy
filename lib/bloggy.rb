require 'jekyll'
require 'rails'
require "bloggy/version"

module Jekyll
  module Rails
    module Bloggy
      import 'lib/bloggy/railtie' if defined?(Rails)
    end
  end
end

#Rails::Generators.hidden_namespaces << "rails"
#Rails::Generators.hidden_namespaces << "jekyll:install"
#Rails::Generators.hidden_namespaces.flatten!