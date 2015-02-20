module Schoolmaster
	class Configuration
		attr_accessor :require_file_comments, :debug, :git_logger, :characters_per_line,
									:cane_custom_args

		def initialize
			@require_file_comments = false
			@debug = false
			@git_logger = nil
			@characters_per_line = 100

			@cane_custom_args = []
		end
	end
end

