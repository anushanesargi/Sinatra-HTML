require 'sinatra'
require "sinatra/reloader" if development?


get '/random-cat' do
    @name = ["Amigo", "Almond", "Cashew", "Misty"].sample
    erb(:index)
end

get '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
end