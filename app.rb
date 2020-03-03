require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Meow" 
end 


get '/random-cat' do 
  # the instance variable @name can only be accessed by this route
  @name = ['Fluffy fluff', 'Furry ball', 'Hooman extinguisher'].sample 
  # 'ebr' method reads the input file 
  # then process ruby into HTML 
  # the html then return to the 'get' method
  erb :index
end 

post '/named-cat' do
  # what is the p doing here?
  p params
  @name = params[:name]
  erb :index
end 

get '/cat-form' do
  erb :cat_form
end 
