source 'http://rubygems.org'
#source 'http://gems.github.com'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2', '0.3.11'

# # Use unicorn as the web server
# # gem 'unicorn'
# # Use passenger as the web server
gem 'passenger'

# # Deploy with Capistrano
gem 'capistrano'

# # Comment this line if you are not using RVM
# # Starting with RVM 1.11.3 Capistrano integration was extracted to a separate gem.
# # See https://rvm.io/integration/capistrano/
gem 'rvm-capistrano'

# # To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# # gem 'ruby-debug'

# # Bundle the extra gems:
# # gem 'bj'
# # gem 'sqlite3-ruby', :require => 'sqlite3'
# # gem 'aws-s3', :require => 'aws/s3'
# gem "meta_where", '1.0.1'
# Squeel will work with Rails >= 3.1.3 due to a Rails issue
# gem "squeel"

# # for Users and authentication
gem 'devise'

gem 'json', '1.7.6'

gem 'validation_reflection', "1.0.0"
gem 'validates_existence', "0.5.6", :git => 'git://github.com/bosh/validates_existence.git'
# gem "validates_existence", ">= 0.4"

gem 'cancan'

# gem 'nokogiri', ">= 1.4.4.1", "<=1.5.0.beta.2"
gem "nokogiri", "1.5.6"

gem "newrelic_rpm"

# # for easy pagination
gem 'will_paginate', '3.0.0'


# # Having problem with new migrations?
# # * Disable slim_scrooge here
# # * Deploy on server with "cap deploy:migrations"
# # * Restore slim_scrooge here
# # * Deploy again on server with "cap deploy"
# # Removed slim_scrooge by now
# # Optimizator query
# #gem 'slim_scrooge'

# # Nice CLI progress bar for ruby
gem "progressbar"

# # Will remove prototype in favor of jQuery
gem "jquery-rails"

# # It forces to use a specific version of Rake
# gem 'rake', '0.9.2.2'
gem "rake", "10.0.3"

# # Pure Ruby library to use R language from Ruby code
# # it needs that R interpreter is installed and R_HOME is configured
# # see https://sites.google.com/a/ddahl.org/rinruby-users/Home for
# # more documentation
gem 'rinruby'

# # Geomapping gem
gem 'gmaps4rails'

# # Forum gem
# gem 'forum_monster', :git => 'git://github.com/dej611/forum_monster.git'
gem 'bb-ruby'

# # Bundle gems for the local environment. Make sure to
# # put test-only gems in this group so their generators
# # and rake tasks are available in development mode:
group :development, :test, :pg_test do

  # Use mongrel as the web server
  # gem 'mongrel', "1.2.0"
  # Use Thin as web server
  gem "thin"

  gem 'rspec', "2.12.0"
  gem 'rspec-rails', "2.12.0"
  gem 'rspec_rails3_validation_expectations', '0.0.2', :git => 'git://github.com/bosh/rspec_rails3_validation_expectations.git'

  gem 'cover_me', '>= 1.2.0'

  gem 'ruby-debug19'
  gem 'factory_girl_rails'
  gem "cucumber"
  gem "database_cleaner"
  # Due to the new name resolution approach of the bundler gem it has the require option
  gem "cucumber-rails", "0.4.0", :require => false # '0.4.0.beta.1'
  gem 'capybara'
  gem 'launchy'
  gem 'brakeman'
end

# group :pg_test do
#   #gem 'pg'
# end
