require 'sinatra'
require_relative 'random_pair.rb'
require_relative 'formatter.rb'

get '/' do
    erb :get_number
end

post '/number' do
    num = params[:student_number]
    redirect '/names?num=' + num
end

get '/names' do
    num = params[:num]
    erb :get_names, :locals => {:num => num}
end

post '/names' do
    num = params[:num]
    names = params[:user_names]
    random_names_array = randomizer(names)
    name_pairs = fix(random_names_array)
    erb :get_names_again, :locals => {:name_pairs => name_pairs}
end