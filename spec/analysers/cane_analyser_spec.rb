require "spec_helper"

describe Schoolmaster::CaneAnalyser do
	context "the command param" do
		it "should have the default cane system command" do
			analyser = Schoolmaster::CaneAnalyser.new
			expected_command = "cane . --style-measure 100  --no-doc"
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end

		it "should be able to be overridden" do
			analyser = Schoolmaster::CaneAnalyser.new(command: "cane app")
			expected_command = "cane app --style-measure 100  --no-doc"
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end
	end

	context "the characters_per_line param" do
		it "should allow characters_per_line to be changed" do
			allow(Schoolmaster.configuration).to receive(:characters_per_line)
																					 .and_return(10)
			analyser = Schoolmaster::CaneAnalyser.new

			expected_command = "cane . --style-measure 10  --no-doc"
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end
	end

	context "the require_file_comments param" do
		it "should allow require_file_comments to be changed" do
			allow(Schoolmaster.configuration).to receive(:require_file_comments)
																					 .and_return(true)

			analyser = Schoolmaster::CaneAnalyser.new
			expected_command = "cane . --style-measure 100"
			expect(analyser).to receive(:system).with expected_command
			analyser.run
		end
	end
end

