module Schoolmaster
	class BaseAnalyser
		attr_reader :command, :args

		def initialize(params)
			@command = params.fetch(:command, "")
			@args = params.fetch(:args, [])
		end

		def run
			arg_str = (args | default_args).join(" ")
			system("#{command} #{arg_str}")
		end

		def default_args
			[]
		end
	end
end
