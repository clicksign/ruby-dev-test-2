ENV['RAILS_ENV'] ||= 'test'

require 'simplecov'
require_relative '../config/environment'
require 'rails/test_help'
require 'minitest/unit'

SimpleCov.start do
  add_filter %r{^/test/}
end

class ActiveSupport::TestCase
  fixtures :all

  Shoulda::Matchers.configure do |config|
    config.integrate do |with|
      with.test_framework :minitest
      with.library :rails
    end
  end
end
