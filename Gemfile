source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
#gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
#gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'

   ### CI ###
  gem 'danger'                      # Like Unit Tests, but for your Team Culture.
  gem 'danger-rubocop'              # A Danger plugin for running Ruby files through Rubocop.
  gem 'danger-rails_best_practices' # A Danger plugin to lint Ruby files through rails_best_practices.
  gem 'danger-reek'                 # A Danger plugin to lint Ruby files through Reek.
  gem 'danger-slim_lint'            # A Danger plugin to lint Ruby files through slim-lint.
  gem 'danger-simplecov_json'       # A Danger plugin to report code coverage generated by SimpleCov in JSON format.
  gem 'rspec_junit_formatter'       # RSpec JUnit XML formatter
  gem 'circleci-bundle-update-pr'   # Create GitHub PullRequest of bundle update in CircleCI
  gem 'bundle_outdated_formatter'   # Formatter for `bundle outdated`
  gem 'rubocop-checkstyle_formatter'

 ### Lint ###
  gem 'rubocop'              # Automatic Ruby code style checking tool.
  gem 'rubocop-rspec'        # Code style checking for RSpec files
  gem 'mry'                  # Mry Migrates .Rubocop.Yml
  gem 'rails_best_practices' # a code metric tool for rails codes.
  gem 'reek'                 # Code smell detector for Ruby
  gem 'flog'                 # Flog reports the most tortured code in an easy to read pain report
  gem 'flay'                 # Flay analyzes code for structural similarities
  gem 'fasterer'             # Run Ruby more than fast. Fasterer
  gem 'debride'              # Analyze code for potentially uncalled / dead methods, now with auto-removal.
  gem 'synvert'              # synvert = syntax + convert.
  gem 'slim_lint'            # Slim template linting tool

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
