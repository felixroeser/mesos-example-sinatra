require 'bundler'
Bundler.setup
require 'sinatra'

configure do
  set :bind, '0.0.0.0'
  set :port, ENV['PORT']
end

get '/' do
  "Hello World!"
end

get '/ping' do
  "pong"
end
