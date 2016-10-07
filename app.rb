require 'sinatra'
require_relative 'random_pair.rb'

get '/' do
    erb :get_names
end

post '/names' do
    names = params[:user_names].split.map(&:capitalize).join(' ')
    random_names_array = randomizer(names)
    erb :get_names_again, :locals => {:random_names_array => random_names_array}
end