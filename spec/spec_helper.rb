ENV['RACK_ENV'] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(File.dirname(__FILE__), "spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |conf|
  Sinatra::Synchrony.patch_tests!

  conf.include Rack::Test::Methods
end
