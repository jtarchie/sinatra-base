ENV["RACK_ENV"] ||= "development"

require 'rubygems'
require 'bundler/setup'

Bundler.require(:default, ENV["RACK_ENV"].to_sym)

Rabl.register!

Dir["./lib/**/*.rb"].each { |f| require f }

database_config = YAML.load_file(File.join(File.dirname(__FILE__),"database.yml"))

ActiveRecord::Base.establish_connection(database_config[ENV['RACK_ENV']])
