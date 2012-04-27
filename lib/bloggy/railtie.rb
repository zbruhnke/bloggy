require 'bloggy'
require 'rails'
module Bloggy
  class Railtie < Rails::Railtie
    rake_tasks do
      load '../../tasks/new_post.rake'
    end
  end
end