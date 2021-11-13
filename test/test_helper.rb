ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  Shoulda::Matchers.configure do |config|
    config.integrate do |with|
      with.test_framework :minitest
      with.library :rails
    end
  end
  
  # Add more helper methods to be used by all tests here...
end
