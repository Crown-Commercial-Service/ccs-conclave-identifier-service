source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.0.6'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18.4'
gem 'activerecord-postgis-adapter', '>= 6.0.1'
# Use Puma as the app server
gem 'puma', '~> 4.3', '>= 4.3.12'
gem 'jwt'
gem 'faraday'
gem 'faraday_middleware'
gem 'faraday-http-cache'
gem 'graphlient'
# Use SCSS for stylesheets
# gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
#gem 'jbuilder'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# gem 'redis-namespace'
# gem 'redis-rails', '>= 5.0.2'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Error logging
gem 'rollbar'
gem 'webmock', '>= 3.12.1'
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'
# For converting between cases for API request & response
gem 'olive_branch', '>= 4.0.1'
# test code complexity
gem 'flog'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# aws ssm
gem 'aws-sdk-ssm'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  gem 'listen', '~> 3.2'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails', '>= 2.8.1'
  gem 'i18n-tasks', '>= 1.0.12'
  gem 'rspec-rails', '>= 5.1.2'
  # Rubocop code quality and error scanning.
  gem 'rubocop', '>= 1.12.0'
  gem 'rubocop-performance', '>= 1.10.2'
  gem 'rubocop-rails', '>= 2.14.2'
  gem 'rubocop-rspec', '>= 2.2.0' # or gem 'rubocop-minitest'
  gem 'brakeman'
  gem 'pry-rails'
  gem 'factory_bot_rails', '>= 6.2.0'
  gem 'simplecov', require: false
  # Adds support for Capybara system testing and selenium driver
  #gem 'capybara', '>= 2.15'
  # gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  # gem 'webdrivers'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
