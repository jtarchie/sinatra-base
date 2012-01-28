require './lib/server'
require 'sinatra/activerecord/rake'
require 'rspec/core/rake_task'

desc "Run specs"
task :spec do
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = './spec/**/*_spec.rb'
  end
end

namespace :db do
  desc "rollback your DB use STEPS to specify more than 1"
  task :rollback do
    steps = (ENV['STEPS'] || 1).to_i
    ActiveRecord::Migrator.rollback('db/migrate',steps)
  end
end


task :default => :spec
