require "serious_schoolmaster/version"
require "serious_schoolmaster/configuration"

module SeriousSchoolmaster
  require 'serious_schoolmaster/railtie' if defined?(Rails)

	class << self
		def configure(silent = false)
			yield(configuration)
		end

		def configuration
			@configuration ||= Configuration.new
		end
	end
end
