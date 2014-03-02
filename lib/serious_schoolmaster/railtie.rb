require 'serious_schoolmaster'
require 'rails'

module SeriousSchoolmaster
  class Railtie < Rails::Railtie
    railtie_name :serious_schoolmaster
    rake_tasks do
      load "serious_schoolmaster/tasks/deploy.rake"
    end
  end
end

