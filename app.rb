require 'sinatra'
require_relative 'random_pair.rb'
# require_relative 'formatter.rb'

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
    names = params[:user_names]
    random_pairs = random_pair(names)
    erb :get_names_again, :locals => {:random_pairs => random_pairs}
end