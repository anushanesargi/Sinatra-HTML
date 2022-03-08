require 'sinatra'
require "sinatra/reloader" if development?


# get '/' do
#     "hello! ANusha"
# end

# get '/secret' do
#     "hello! You"
# end

# get '/firstsecret' do
#     "hello! You Beautiful"
# end

# get '/cat' do
#     <h1>My name is <%= ["Amigo", "Almond", "Cashew", "Misty"].sample%></h1>
#     "<div style='border: 3px dashed red'>
#         <img src='https://i.imgur.com/jFaSxym.png/'>
#     </div>"
# end

get '/cat' do
    @name = ["Amigo", "Almond", "Cashew", "Misty"].sample
    erb(:index)
end