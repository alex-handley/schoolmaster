# Schoolmaster

[![Code Climate](https://codeclimate.com/github/alex-handley/schoolmaster/badges/gpa.svg)](https://codeclimate.com/github/alex-handley/schoolmaster)

I built schoolmaster as a rake task originally to run a few of my favourite code metric gems.
The rake task helped my apprentices check their work before submitting a pullrequest for QA.

The gem currently runs the following checks:

- https://github.com/presidentbeef/brakeman
- https://github.com/railsbp/rails_best_practices
- https://github.com/square/cane
- Schoolmaster currently runs Rspec, this is going to be configurable in the next release.

## Installation

Add this line to your application's Gemfile:

    gem "schoolmaster"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install schoolmaster

## Usage

To run:

    schoolmaster

Available configuration options:

| Command Options                 | Description									  | Default       |
| -------------                   | -------------------------		              | ------------- |
| git_logger (currently disabled) | Where to log git messages			          | nil           |
| characters_per_line             | Allowed characters per line                   | 100           |
| require_file_comments           | Require comments at the top of all files      | false         |
| debug                           | Enables debug model on all gems               | false         |
| cane_custom_args                | Add additional params to Cane                 | []            |
| test_custom_args                | Add additional params for rspec               | []            |
| best_practices_custom_args      | Add additional params to Rails Best Practice  | []            |
| brakeman_custom_args            | Add additional params to Brakeman             | []            |

### Example configuration block

To customize schoolmaster add an initializer:

    # config/initializers/schoolmaster.rb
    if defined?(Schoolmaster)
     Schoolmaster.configure do |c|
      c.characters_per_line = 200
      c.cane_custom_args = ["--no-abc", "--no-style"]
      c.test_custom_args = ["-f doc"]
      c.best_practices_custom_args = ["--with-git"]
      c.brakeman_custom_args = ["--skip-files app/controllers/application_controller.rb"]
     end
    end

## Contributing

1. Fork it ( http://github.com/alex-handley/schoolmaster/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Ensure the tests pass
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
