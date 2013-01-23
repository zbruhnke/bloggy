# encoding: UTF-8
=begin
Created on 2012-04-25

@author: Zach Bruhnke <z@zbruhnke.com>

=end

require 'helper'
require 'rails/generators/actions'

class TestGenerateBlog < Test::Unit::TestCase
    context "creating blog" do
        should "generate blog" do
            source = 'config/jekyll'
            destination = 'blog'
            #Rails::Generators::Actions.generate('jekyll', '')
            Jekyll::Rails::JekyllGenerator.new.copy_initializer_file
        end
    end
end
