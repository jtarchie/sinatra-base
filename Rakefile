require 'rspec/core/rake_task'

desc "Run specs"
task :spec do
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = './spec/**/*_spec.rb'
  end
end

require 'active_record'
require 'fileutils'

namespace :db do
  desc "migrate your database"
  task :migrate => [:environment] do
    ActiveRecord::Migrator.migrate(
      'db/migrate', 
      ENV["VERSION"] ? ENV["VERSION"].to_i : nil
    )
  end
  
  desc "rollback your DB use STEPS to specify more than 1"
  task :rollback do
    steps = ENV['STEPS'] || 1
    ActiveRecord::Migrator.rollback('db/migrate',steps)
  end

  desc "create an ActiveRecord migration in ./db/migrate"
  task :create_migration => [:environment] do
    name = ENV['NAME']
    abort("no NAME specified. use `rake db:create_migration NAME=create_users`") if !name

    migrations_dir = File.join("db", "migrate")
    version = ENV["VERSION"] || Time.now.utc.strftime("%Y%m%d%H%M%S") 
    filename = "#{version}_#{name}.rb"
    migration_name = name.gsub(/_(.)/) { $1.upcase }.gsub(/^(.)/) { $1.upcase }

    FileUtils.mkdir_p(migrations_dir)

    open(File.join(migrations_dir, filename), 'w') do |f|
      f << (<<-EOS).gsub("      ", "")
      class #{migration_name} < ActiveRecord::Migration
        def self.up
        end

        def self.down
        end
      end
      EOS
    end
  end
  
  desc "rollback your DB use STEPS to specify more than 1"
  task :rollback => [:environment] do
    steps = (ENV['STEPS'] || 1).to_i
    ActiveRecord::Migrator.rollback('db/migrate',steps)
  end
end

task :environment do
  require './config/boot'
end

task :default => :spec
