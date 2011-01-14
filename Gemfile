source 'http://rubygems.org'

####### YEJ : REM : bundle install

####### YEJ : Rails itself #######
#gem 'rails', '~> 2'
gem 'rails', '~> 3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

####### YEJ : Persistence #######
gem 'mysql2'

####### YEJ : Modules #######
gem 'gravatar_image_tag', '1.0.0.pre2'

####### YEJ : Development tools #######
group :development, :test do
	# Annotate is a tool for annotating ActiveRecord subclasses
	gem 'annotate-models'
	# for unit tests
	gem 'rspec-rails'
	# for managing external dependencies
	gem 'piston'
	# faster server
	gem 'thin'
end

group :test do
  gem 'rspec'
  gem 'webrat'
  gem 'spork'
  gem 'factory_girl_rails'
end


# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end
