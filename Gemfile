source 'http://rubygems.org'

gem 'rails', '3.0.9'
gem 'sqlite3', '1.3.3', :group => :development

# 
# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
 

gem 'rake', '0.8.7'
 
group :development do
   gem 'rspec-rails','2.6.1'
end

group :test do
	gem 'rspec'
   gem 'rspec-rails','2.6.1'
   gem 'webrat', '0.7.1'
   gem 'autotest', '4.4.6'
   gem 'autotest-rails-pure', '4.1.2'
   #gem 'autotest-fsevent', '0.2.4' # this is for mac osx filesystem events
   #gem 'autotest-growl', '0.2.9' # this is for mac osx window notifications
end

group :production do
   gem 'pg'
end
