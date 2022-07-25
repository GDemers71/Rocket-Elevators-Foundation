source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
  gem 'rails', '~> 5.2.8'
# Use mysql as the database for Active Record
  gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
  gem 'puma', '~> 4.3.11'
# Use SCSS for stylesheets
  gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
  gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
  gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
  gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
  gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb

# Use Bootstrap to call the assets
  gem 'bootstrap', '~> 5.1.3'

# Use font-awesome
  gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'

# To sanitize html, images and... 
  gem 'html-proofer', '~> 3.19', '>= 3.19.4'

# To use the revolution slider
  gem 'bootstrap-slider-rails', '~> 9.8'

  gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :development, :production do

  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capistrano', '~> 3.10', require: false

  gem 'capistrano-rbenv', '~> 2.2'
  gem 'capistrano-rails', '~> 1.4', require: false
  gem 'capistrano-bundler', '>= 1.1.0'
  gem 'capistrano3-puma', github: "seuros/capistrano-puma"
  gem 'ed25519', '>= 1.2', '< 2.0'
  gem 'bcrypt_pbkdf', '>= 1.0', '< 2.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# JQuery
  gem 'jquery-rails', '~>4.4'

  gem 'devise'

  gem 'rails_admin', '~> 2'
 
  gem 'cancancan', '~> 3.4'

# Use postgresql as the database for the Warehouse
  gem 'pg'

# Second data base helper
 gem 'secondbase'

# Add fake data
  gem 'faker'

  gem 'rubocop-faker'
 
# To get localization of our data see config/environments for setup
  gem 'rails-i18n', '~> 5.1', '>= 5.1.3'

# To group data per month
  gem "groupdate"

#For Slack wedhook API
  gem "slack-notifier"

#For securing API keys
  gem 'figaro'

#For amazon web service 
  gem 'aws-sdk-polly', '~> 1.46'
  gem 'aws-sdk-rails'
  gem 'aws-sdk'
#for custom action in rails_admin
  
# To manage requests made through contact or quotes forms
  gem 'rest-client', '~> 2.1'
  gem 'mime-types', '>= 1.16', '< 4.0'
  gem 'netrc', '~> 0.8'
  gem 'http-accept', '>= 1.7.0', '< 2.0'
  gem 'http-cookie', '>= 1.0.2', '< 2.0'  

# To install the twilio gem
  gem 'twilio-ruby'

# To install the Sendgrid gem
  gem 'sendgrid-ruby', '~> 5.0'

# To install the googlemaps gem
  # gem 'google_maps_service', '~> 0.4.2'

# To install the Googlemaps gem for markers
  gem 'gmaps4rails', '~> 2.1', '>= 2.1.2'

# for graphQL  
  gem 'graphql', '1.11.6'

# default_value_for
gem "default_value_for", "~> 3.0"

# graphiQL interface in local browser
gem 'graphiql-rails', '1.7.0', group: :development
