source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby "2.3.0"
gem 'rails', '4.2.0'
# Use sqlite3 as the database for Active Record
#gem 'mysql2', '~> 0.3.18'
gem 'pg', '~> 0.18.4'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bourbon', '~> 4.2', '>= 4.2.6'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.37'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'paperclip', '~> 4.3.2'
gem 'aws-sdk', '~> 2.2', '>= 2.2.13'
gem 'devise', '~> 3.5.3'
gem 'lograge'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :development, :test do
  gem 'pry'
  gem 'pry-nav'
  gem 'rspec-rails', '~> 3.4.0'
  gem 'zeus', '~> 0.15.4'
  gem 'parallel_tests'
  gem 'zeus-parallel_tests'
  gem 'guard-rspec', require: false
  gem 'better_errors', '~> 2.1', '>= 2.1.1'
  gem 'binding_of_caller'
  gem 'awesome_print'
end

group :test do
  gem 'capybara', '~> 2.5.0'
  gem 'selenium-webdriver', '~> 2.48.1'
end
