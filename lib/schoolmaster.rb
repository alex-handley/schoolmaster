require "schoolmaster/version"
require "schoolmaster/configuration"

Dir[File.dirname(__FILE__) + '/schoolmaster/analysers/*.rb'].each { |f| require f }

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
