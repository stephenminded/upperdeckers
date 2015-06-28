ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

# EagerLoad content of the support folder
Dir[Rails.root.join('test/support/**/*.rb')].each do |file|
  require file
end


class ActiveSupport::TestCase
end
