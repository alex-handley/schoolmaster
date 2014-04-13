module SeriousSchoolmaster
	class Configuration
		attr_accessor :require_file_comments, :debug

		def initialize
			@require_file_comments = false
			@debug = false
		end
	end
end
