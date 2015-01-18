require 'schoolmaster'
require 'rails'

module Schoolmaster
  class Railtie < Rails::Railtie
    railtie_name :schoolmaster
    rake_tasks do
      load "schoolmaster/tasks/deploy.rake"
    end
  end
end

