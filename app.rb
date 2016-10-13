require 'sinatra'
require_relative 'random_pair.rb'

get '/' do
    erb :number_box
end

post '/number' do
    names = params[:myInput]
    redirect '/names?students=' + names
end

get '/names' do
    names = params[:names]
    erb :get_names, :locals => {:num => num}
end

post '/names' do
    names = params.values
    random_pairs = random_pair(names)
    erb :get_names_again, :locals => {:random_pairs => random_pairs}
end