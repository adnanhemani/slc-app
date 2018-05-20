source 'https://rubygems.org'
ruby '2.4.2'

gem 'bootswatch-rails'
gem 'bootstrap-sass'
gem 'axlsx_rails'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.9'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'jasmine-rails'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'simplecov', :require => false
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels' # basic imperative step defs
  gem 'database_cleaner' # required by Cucumber
  gem "factory_bot_rails", "~> 4.0"
  gem 'metric_fu'        # collect code metrics
  gem 'simplecov-cobertura'
  gem 'coveralls', :require => false
end

group :production do
  gem 'pg', '0.20.0'
  gem 'rspec-rails'
  gem 'rails_12factor'
end

gem 'devise'
gem 'haml'
