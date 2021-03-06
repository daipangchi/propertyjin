source 'https://rubygems.org'

# == Rails core

gem 'rails', '4.1.1'

# ==== Data storage ====

# Use sqlite3 as the database for Active Record
gem 'pg'

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
# Angular templates
gem 'angular-rails-templates'
# csrf token fix
gem 'angular_rails_csrf'
# A resource factory
gem 'angularjs-rails-resource', '~> 1.1.1'
# Guess what :D
gem 'angularjs-file-upload-rails', '~> 1.1.5', github: "Marthyn/angularjs-file-upload-rails"

# ==== JSON responses ====

# JSON builder
gem "active_model_serializers"

# ==== Auth =====

# Users
gem 'devise'

# ==== Other =====

# Saving pics
gem "paperclip", "~> 4.1"
# Store bd structure in model's file
gem 'annotate', ">=2.6.0"


group :production do
  # Server
  gem 'puma'
end

group :development, :test do
  # Deployment
  gem 'mina'
  # Tasks for mina
  gem 'mina-puma', :require => false

  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end

# Use debugger
gem 'debugger', group: [:development, :test]

