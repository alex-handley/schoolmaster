class CaneAnalyser < BaseAnalyser

	def initialize(params = {})
		super
		@command = "cane ." if command.empty?
	end

	def default_args
		cane_opts = []
		cane_opts << "--style-measure " \
								 "#{Schoolmaster.configuration.characters_per_line}"

		unless Schoolmaster.configuration.require_file_comments
			cane_opts << " --no-doc"
		end

		cane_opts
	end
end

