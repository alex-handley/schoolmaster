require "git"

desc "A great audit tool that checks your shit before its pushed"
task :pushme => :environment do
  cane_opts = "--style-measure " \
							"#{SeriousSchoolmaster.configuration.characters_per_line}"

	unless SeriousSchoolmaster.configuration.require_file_comments
		cane_opts += " --no-doc"
	end

  system("cane . #{cane_opts}")

  system("rails_best_practices .")
  system("bundle exec rspec spec")

	unless SeriousSchoolmaster.configuration.debug
		brakeman_opts = "-q"
	end
  system("brakeman #{brakeman_opts}")

  # Push Branch
  g = Git.open(Rails.root,
							 log: SeriousSchoolmaster.configuration.git_logger)

  g.push(g.remotes.first, g.current_branch)

	puts
	puts "PUSHED TO #{g.current_branch}"
end
