require "schoolmaster/version"
require "schoolmaster/configuration"
require "schoolmaster/analysers/base_analyser"
require "schoolmaster/analysers/cane_analyser"
require "schoolmaster/analysers/best_practices_analyser"

module Schoolmaster
  require 'schoolmaster/railtie' if defined?(Rails)

	class << self
		def configure(silent = false)
			yield(configuration)
		end

		def configuration
			@configuration ||= Configuration.new
		end
	end
end
