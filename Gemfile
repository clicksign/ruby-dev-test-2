source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 7.0.3'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 5.6'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

group :development do
  gem 'rubocop', require: false
  gem 'spring'
end

group :test do
  gem 'shoulda', '~> 4.0'
  gem 'shoulda-matchers', '~> 4.5'
  gem 'simplecov', require: false
end
