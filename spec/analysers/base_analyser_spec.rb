require "spec_helper"

describe Schoolmaster::BaseAnalyser do
	context "when inheriting the BaseAnalyser" do
		it "should execute the configured command" do
			params = {
				command: "madeup spec"
			}

			@klass = Class.new(Schoolmaster::BaseAnalyser)

			analyser = @klass.new(params)
			expect(analyser).to receive(:system).with("#{params[:command]} ")
			analyser.run
		end

		it "should allow args to be injected into command str" do
			params = {
				command: "madeup spec"
			}

			@klass = Class.new Schoolmaster::BaseAnalyser do
				def default_args
					["beam_me_up"]
				end
			end

			analyser = @klass.new(params)
			expect(analyser).to receive(:system).with("#{params[:command]} beam_me_up")
			analyser.run
		end
	end
end

