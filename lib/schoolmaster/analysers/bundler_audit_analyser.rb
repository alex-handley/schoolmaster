module Schoolmaster
	class BundlerAuditAnalyser < BaseAnalyser

		def initialize(params = {})
			super
			@command = "bundle-audit check" if command.empty?
		end
	end
end

