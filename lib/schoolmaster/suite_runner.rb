module Schoolmaster
	class SuiteRunner
		def self.run
			CaneAnalyser.new(args:	Schoolmaster.configuration.cane_custom_args).run
			BestPracticesAnalyser.new.run if defined?(Rails)
			BrakemanAnalyser.new.run
			TestAnalyser.new.run
		end
	end
end

