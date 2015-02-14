require "spec_helper"

describe TestAnalyser do
	context "the command param" do
		it "should have the default system command" do
			analyser = TestAnalyser.new
			expected_command = "bundle exec rspec spec "
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end

		it "should be able to be overridden" do
			analyser = TestAnalyser.new(command: "rake test")
			expected_command = "rake test "
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end
	end
end

