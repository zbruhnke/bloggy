require 'bloggy'
require 'rails'
module Bloggy
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'lib/tasks/*.rake'
    end
  end
end