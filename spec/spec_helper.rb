ENV['RACK_ENV'] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

RSpec.configure do |conf|
  Sinatra::Synchrony.patch_tests!

  conf.include Rack::Test::Methods
end
