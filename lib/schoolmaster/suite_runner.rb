module Schoolmaster
	class SuiteRunner
		def self.run
			Schoolmaster::CaneAnalyser.new(args: Schoolmaster.configuration.cane_custom_args).run
			Schoolmaster::BestPracticesAnalyser.new.run if defined?(Rails)
			Schoolmaster::BrakemanAnalyser.new.run
			Schoolmaster::TestAnalyser.new.run
		end
	end
end

