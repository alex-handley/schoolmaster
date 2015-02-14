require "git"

desc "A great audit tool that checks your shit before its pushed"
task pushme: :environment do
	CaneAnalyser.new(args:	Schoolmaster.configuration.cane_custom_args).run
	BestPracticesAnalyser.new.run
	BrakemanAnalyser.new.run
	TestAnalyser.new.run

#  # Push Branch
#  g = Git.open(Rails.root,
#							 log: Schoolmaster.configuration.git_logger)
#
#  g.push(g.remotes.first, g.current_branch)
#
#	puts
#	puts "PUSHED TO #{g.current_branch}"
end
