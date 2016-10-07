require 'sinatra'
require_relative 'random_pair.rb'

get '/' do
    erb :get_names
end

post '/names' do
  "Hello World"
end