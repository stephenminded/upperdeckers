require 'factory_girl_rails'

class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
end

begin
  DatabaseCleaner.start
  FactoryGirl.lint
ensure
  DatabaseCleaner.clean
end

