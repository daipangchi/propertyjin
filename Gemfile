source 'https://rubygems.org'

# == Rails core

gem 'rails', '4.1.1'

# ==== Data storage ====

# Use sqlite3 as the database for Active Record
gem 'pg'

# ==== Data structures ====

# Add slug to models and use it
gem 'friendly_id', '~> 5.0.0'

# ==== Assets/Frontend ====

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer',  platforms: :ruby
# Templates
gem 'slim-rails'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build forms with ease!
gem 'simple_form', '~>3.1.0.rc1'
# Uploading form
gem 'jquery-fileupload-rails'

# ==== Auth =====

# Users
gem 'devise'

# ==== Other =====

# Saving pics
gem "paperclip", "~> 4.1"
# Store bd structure in model's file
gem 'annotate', ">=2.6.0"

group :doc do
  gem 'sdoc', require: false
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Deployment
  gem 'mina'
end

group :production do
  # Server
  # TODO: Switch to puma
  gem 'unicorn', '4.8.2'
end

group :development, :test do
  gem 'spring-commands-rspec'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'timecop'
end

# Use debugger
gem 'debugger', group: [:development, :test]

