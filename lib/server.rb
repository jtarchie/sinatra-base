require 'sinatra/base'
require 'sinatra/synchrony'
require 'faraday'

class WebApp < Sinatra::Base
  set :views, settings.root + "/../views"
  register Sinatra::Synchrony

  get '/' do
    'Hello World'
  end

  get '/.:format' do |format|
    @greeting = OpenStruct.new(:greeting => "Hello")
    render :rabl, :index, :format => format
  end
end
