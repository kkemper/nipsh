source 'http://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby '2.2.1'
gem 'rails', '4.2.5.1'
gem 'bcrypt', '3.1.7'
gem 'puma', '3.4.0'
gem 'json'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 3.0.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '4.1.1'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '5.0.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.4.1'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'pg'
gem 'bootstrap-sass'
gem 'authlogic', '3.4.6'
gem 'activeadmin', github: 'activeadmin'
gem 'faker'
gem 'ransack'
gem 'chartkick'
gem 'spreadsheet_architect'
gem 'hightop'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano', '~> 3.4.0'
  gem 'capistrano-passenger'
end


group :test do
  gem 'minitest-reporters', '1.0.5'
  #gem 'mini_backtrace', '0.1.3'
  gem 'guard-minitest', '2.3.1'

end


group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '1.7.1'
  gem 'listen', '3.0.8'
  gem 'spring-watcher-listen', '2.0.0'
end

group :production do
  gem 'rails_12factor'
 end
