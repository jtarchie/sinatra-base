require 'sinatra/base'
require 'sinatra/synchrony'

class WebApp < Sinatra::Base
  register Sinatra::Synchrony

  get '/' do
    'Hello World'
  end
end
