source 'https://rubygems.org'

gem 'rails', '3.2.9'
gem 'rake'
# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# stop warnings about could not determine content-length of response under rails s (webrick)
gem 'webrick', '1.3.1'

gem 'mysql2'

gem 'haml'
gem 'devise'
gem 'kaminari'

# simpler form  builder
gem 'simple_form'


gem 'twitter-bootstrap-rails'


# provides the Settings object
gem "rails_config"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem "therubyracer"
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger
# gem 'debugger'

group :development do
  
end

group :test do
  gem 'sqlite3'
  gem 'capybara'
  gem 'rspec-rails'  
end