require 'jekyll'
require 'rails'
require "bloggy/version"

module Jekyll
  module Rails
  end
end

#Rails::Generators.hidden_namespaces << "rails"
#Rails::Generators.hidden_namespaces << "jekyll:install"
#Rails::Generators.hidden_namespaces.flatten!