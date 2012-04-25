# encoding: UTF-8
=begin
Created on 2012-04-25

@author: Zach Bruhnke <z@zbruhnke.com>

=end

require 'rubygems'
require 'yaml'
YAML::ENGINE.yamler = 'syck'

gem 'RedCloth', '>= 4.2.1'

require 'jekyll-rails'

require 'RedCloth'
require 'rdiscount'
require 'kramdown'
require 'redcarpet'

require 'shoulda'
require 'rr'

include Jekyll::Rails

# Send STDERR into the void to suppress program output messages
STDERR.reopen(test(?e, '/dev/null') ? '/dev/null' : 'NUL:')

class Test::Unit::TestCase
  include RR::Adapters::TestUnit

  def dest_dir(*subdirs)
    File.join(File.dirname(__FILE__), 'dest', *subdirs)
  end

  def source_dir(*subdirs)
    File.join(File.dirname(__FILE__), 'source', *subdirs)
  end

  def clear_dest
    FileUtils.rm_rf(dest_dir)
  end
end
