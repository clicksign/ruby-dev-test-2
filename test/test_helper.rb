ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all factories in test/factories/*.yml for all tests in alphabetical order.
  fixtures :all
  include FactoryBot::Syntax::Methods
end
