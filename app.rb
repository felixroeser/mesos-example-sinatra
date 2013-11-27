require 'bundler'
Bundler.setup
require 'sinatra'

get '/' do
  "Hello World!"
end

get '/ping' do
  "pong"
end
