class TestAnalyser < BaseAnalyser

	def initialize(params = {})
		super
		@command = "bundle exec rspec spec" if command.empty?
	end
end

