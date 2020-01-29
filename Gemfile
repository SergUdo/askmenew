source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'jquery-rails'
gem 'rubocop'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug'
  gem 'minitest', '~> 5.8', '>= 5.8.4'
end

group :development do
  gem 'listen'
  gem 'web-console', '~> 4.0.1'
end

group :production do
  gem 'pg'
end
