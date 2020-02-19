source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'

gem 'jquery-rails'
gem 'rubocop'
gem 'uglifier'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
gem 'recaptcha', require: 'recaptcha/rails'
gem 'dotenv-rails', require: 'dotenv/rails-now'

group :development, :test do
  gem 'byebug'
  gem 'minitest', '~> 5.8', '>= 5.8.4'
end

group :development do
  gem 'sqlite3', '~> 1.4'
  gem 'listen'
  gem 'web-console', '~> 4.0.1'
end

group :production do
  gem 'pg'
end
