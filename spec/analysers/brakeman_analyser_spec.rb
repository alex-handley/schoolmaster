require "spec_helper"

describe Schoolmaster::BrakemanAnalyser do
	context "the command param" do
		it "should have the default system command" do
			analyser = Schoolmaster::BrakemanAnalyser.new
			expected_command = "brakeman . -q"
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end

		it "should be able to be overridden" do
			analyser = Schoolmaster::BrakemanAnalyser.new(command: "brakeman app")
			expected_command = "brakeman app -q"
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end
	end

	context "the debug param" do
		it "should allow debug to be turned on" do
			allow(Schoolmaster.configuration).to receive(:debug).and_return(10)
			analyser = Schoolmaster::BrakemanAnalyser.new
			expected_command = "brakeman . "
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end
	end
end

