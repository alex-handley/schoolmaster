require "spec_helper"

describe Schoolmaster::BundlerAuditAnalyser do
	context "the command param" do
		it "should have the default system command" do
			analyser = Schoolmaster::BundlerAuditAnalyser.new
			expected_command = "bundle-audit check "
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end

		it "should be able to be overridden" do
			analyser = Schoolmaster::BundlerAuditAnalyser.new(command: "check app")
			expected_command = "check app "
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end
	end

	context "the debug param" do
		it "should allow debug to be turned on" do
			allow(Schoolmaster.configuration).to receive(:debug).and_return(10)
			analyser = Schoolmaster::BundlerAuditAnalyser.new
			expected_command = "bundle-audit check "
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end
	end
end

