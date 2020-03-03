require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Shush" 
end 


get '/cat' do 
  # the instance variable @name can only be accessed by this route
  @name = ['Chloe', 'Olivia', 'Ariane'].sample 
  # 'ebr' method reads the input file 
  # then process ruby into HTML 
  # the html then return to the 'get' method
  erb :index
end 