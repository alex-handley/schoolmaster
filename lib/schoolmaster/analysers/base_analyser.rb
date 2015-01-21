class BaseAnalyser
	attr_reader :command

	def initialize(params)
		@command = params.fetch(:command, "")
	end

	def run
		system(command)
	end
end

