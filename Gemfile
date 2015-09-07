source 'https://rubygems.org'
ruby   '2.2.3'

gem 'rails', '~> 4.2.0'
gem 'pg',    '~> 0.18.1'
gem 'puma',  '~> 2.11.1'

gem 'coffee-rails',   '~> 4.1.0'
gem 'sass-rails',     '~> 5.0.1'
gem 'slim-rails',     '~> 3.0.1'

gem 'bootstrap-sass',          '~> 3.3.3'
gem 'font-awesome-rails',      '~> 4.3.0.0'
gem 'jquery-rails',            '~> 4.0.3'
gem 'jquery-validation-rails', '~> 1.13.1'
gem 'uglifier',                '>= 2.7.1'

gem 'aasm',                          '~> 4.2.0'
gem 'activevalidators',              '~> 3.2.0'
gem 'activerecord-humanized_errors', '~> 2.0.1'

gem 'httparty',        '~> 0.13.3'
gem 'omniauth-github', '~> 1.1.2'

gem 'awesome_print', '~> 1.6.1'

group :development, :test do
  gem 'capybara',        '~> 2.4.4'
  gem 'capybara-webkit', '~> 1.4.1'
  gem 'launchy',         '~> 2.4.3'
  gem 'pry-rails',       '~> 0.3.3'
  gem 'rspec-rails',     '~> 3.2.1'
end

group :development, :staging, :test do
  gem 'faker', '~> 1.4.3'
end

group :development do
  gem 'dotenv-rails',         '~> 2.0.0'
  gem 'rails_best_practices', '~> 1.15.7'
end

group :doc do
  gem 'sdoc', require: false
end

group :production, :staging do
  gem 'rails_12factor', '~> 0.0.2'
end

group :test do
  gem 'codecov',     '~> 0.0.2', require: false
  gem 'fabrication', '~> 2.12.2'
  gem 'fakeweb',     '~> 1.3.0'
  gem 'poltergeist', '~> 1.6.0'
  gem 'simplecov',   '~> 0.9.2', require: false
end
