require "spec_helper"

describe BestPracticesAnalyser do
	context "the command param" do
		it "should have the default system command" do
			analyser = BestPracticesAnalyser.new
			expected_command = "rails_best_practices . "
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end

		it "should be able to be overridden" do
			analyser = BestPracticesAnalyser.new(command: "rails_best_practices app")
			expected_command = "rails_best_practices app "
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end
	end
end

