require 'sinatra/base'
require 'sinatra/synchrony'

class WebApp < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), "..", "/")
  register Sinatra::Synchrony

  get '/' do
    'Hello World'
  end

  get '/.:format' do |format|
    @greeting = OpenStruct.new(:greeting => "Hello")
    render :rabl, :index, :format => format
  end
end
