module SeriousSchoolmaster
	class Configuration
		attr_accessor :require_file_comments

		def initialize
			@require_file_comments = false
		end
	end
end
