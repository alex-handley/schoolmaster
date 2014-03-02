desc 'A great audit tool that checks your shit before its pushed'
task :pushme => :environment do
  cane_opts = "--style-measure 90 --style-glob {app,lib}/**/*.rb --no-doc --abc-exclude Ability#initialize"
  raise "Cane Failures" if system("cane . #{cane_opts}") == false

  raise "Best Practice Failures" if system("rails_best_practices .") == false
  raise "Spec Failures" if system("bundle exec rspec spec") == false

  models = Dir.entries("#{Rails.root}/app/models")
              .select {|f| f =~ /.rb/}.join(",")
  brakeman_opt = "z --skip-files #{models}"
  raise "Security Failures" if system("brakeman #{brakeman_opt}") == false

  # Push Branch
  g = Git.open(Rails.root, :log => Logger.new(STDOUT))
  g.push(g.remotes.first, g.current_branch)
end
