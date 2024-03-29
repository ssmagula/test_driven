source 'https://rubygems.org'

gem 'rails', '3.2.1'
# Smag: state of the art password encryption
gem 'bcrypt-ruby', '3.0.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.8.1'
  # Smag: Guard is automated testing 
  gem 'guard-rspec', '0.5.5'
  # Annotate allows me to add notes to models
  gem 'annotate', '~> 2.4.1.beta'
  
end

# Gems used only for assets and not required
# in production environments by default.

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  
  # Smag: adding twitter-bootstrap-rails gem 
  gem 'twitter-bootstrap-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '2.0.0'

group :test do
  gem 'rspec-rails', '2.8.1'
  gem 'capybara', '1.1.2'
  
  # Speeds testing up
  gem 'guard-spork', '0.3.2'
  gem 'spork', '0.9.0'
  gem 'factory_girl_rails', '1.4.0'
  
  # Mac OS X-specific gems; RailsTutorial.com asked for rb-fsevent 0.4.3.1, which had error on install
  gem 'rb-fsevent', :require => false
  gem 'growl', '1.0.3'
end

group :production do
  gem 'pg', '0.12.2'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
