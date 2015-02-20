require "spec_helper"

describe Schoolmaster::TestAnalyser do
	context "the command param" do
		it "should have the default system command" do
			analyser = Schoolmaster::TestAnalyser.new
			expected_command = "bundle exec rspec spec "
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end

		it "should be able to be overridden" do
			analyser = Schoolmaster::TestAnalyser.new(command: "rake test")
			expected_command = "rake test "
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end
	end
end

