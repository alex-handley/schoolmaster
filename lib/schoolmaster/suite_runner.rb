module Schoolmaster
	class SuiteRunner
		def self.run
			Schoolmaster::CaneAnalyser.new(
																	args: Schoolmaster.configuration.cane_custom_args).run

			if defined?(Rails)
				Schoolmaster::BestPracticesAnalyser.new(
												args: Schoolmaster.configuration.best_practices_custom_args).run
			end

			Schoolmaster::BrakemanAnalyser.new(
															args: Schoolmaster.configuration.brakeman_custom_args).run

			Schoolmaster::TestAnalyser.new(
																	args: Schoolmaster.configuration.test_custom_args).run

			Schoolmaster::BundlerAuditAnalyser.new(
																	args: Schoolmaster.configuration.bundler_audit_custom_args).run
		end
	end
end

