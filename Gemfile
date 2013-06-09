source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'bootstrap-sass', '2.1'
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.0.1'
gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate', '0.0.6'
gem "paperclip", :git => 'git://github.com/thoughtbot/paperclip.git', :branch => 'v3.2'
gem "aws-sdk"

group :development, :test do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.11.0'
  gem 'annotate', '2.5.0'
  gem 'rails-erd', '1.1.0'  # need graphviz
  gem 'factory_girl_rails', '4.2.1'
  gem 'autotest'
  gem 'autotest-rails'
  gem 'watchr'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.2'

group :test do
  gem 'capybara', '1.1.2'
end

group :production do
  gem 'pg', '0.12.2'
  gem 'rmagick'
end
