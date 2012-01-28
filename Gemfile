source :rubygems

gem "rake"
gem "sinatra"
gem "activerecord"
gem "sinatra-synchrony"
gem 'em-synchrony', :git     => 'git://github.com/igrigorik/em-synchrony.git',
                    :require => ['em-synchrony',
                                 'em-synchrony/activerecord']
gem "pg"
# gem "mysql2"
gem "em-postgresql-adapter", :git => 'git://github.com/leftbee/em-postgresql-adapter.git'
gem "thin"
gem "rabl"

group :test, :development do
  gem "rspec"
  gem 'sqlite3'
end

group :test do
  gem 'rack-test', :require => "rack/test"
end

group :development do
  gem "foreman"
end
