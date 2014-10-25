module SeriousSchoolmaster
	class Configuration
		attr_accessor :require_file_comments, :debug, :git_logger

		def initialize
			@require_file_comments = false
			@debug = false
			@git_logger = nil
		end
	end
end
