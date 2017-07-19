source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'devise'
gem 'devise-i18n'
gem 'enum_help'
gem 'foreman'
gem 'money-rails'
gem 'paperclip', '~> 5.0.0'
gem 'pundit'
gem 'rails', '4.2.6'
gem 'rails-i18n'
source 'https://rails-assets.org' do
  gem 'rails-assets-bootbox'
  gem 'rails-assets-bootstrap', '3.3.7'
  gem 'rails-assets-notifyjs'
end
gem 'bootstrap_sb_admin_base_v2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :production do
  gem 'mysql2', '~> 0.3.18'
  gem 'unicorn'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  gem 'capistrano', '~> 3.7'
  gem 'capistrano-bundler', '~> 1.2'
  gem 'capistrano-rails', '~> 1.2'
  gem 'capistrano-rvm'
  gem 'capistrano3-unicorn'

  gem 'better_errors'
  gem 'faker'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'lerolero_generator'
  gem 'mailcatcher'
  gem 'web-console', '~> 2.0'

  gem 'rails-erd'

  # Spring speeds up development by keeping your application
  # running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
