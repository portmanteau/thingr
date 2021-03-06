source 'https://rubygems.org'
source 'https://rails-assets.org'

ruby '2.1.2'

gem 'airbrake'
gem 'bourbon', '~> 3.2.1'
gem 'coffee-rails'
gem 'delayed_job_active_record'
gem 'devise'
gem 'email_validator'
gem 'flutie'
gem 'high_voltage'
gem 'jquery-rails'
gem 'neat', '~> 1.5.1'
gem 'omniauth-facebook'
gem 'pg'
gem 'rack-timeout'
gem 'rails', '4.1.1'
gem 'rails-assets-fastclick'
gem 'rails-assets-swiper'
gem 'recipient_interceptor'
gem 'sass-rails', '~> 4.0.3'
gem 'slim-rails'
gem 'simple_form'
gem 'title'
gem 'uglifier'
gem 'unicorn'
gem 'paperclip'
gem 'aws-sdk', '< 2.0'
gem 'fog'
gem 'bitters'

group :development do
  gem 'foreman'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'awesome_print'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 2.14.0'
end

group :test do
  gem 'capybara-webkit', '>= 1.0.0'
  gem 'database_cleaner'
  gem 'formulaic'
  gem 'launchy'
  gem 'shoulda-matchers', require: false
  gem 'timecop'
  gem 'webmock'
end

group :staging, :production do
  gem 'rails_12factor'
  gem 'newrelic_rpm', '>= 3.7.3'
end
