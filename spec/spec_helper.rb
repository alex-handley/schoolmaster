require "rubygems"
require "bundler/setup"

require_relative "../lib/schoolmaster"

RSpec.configure do |config|
  config.color = true
	config.order = "random"
end

