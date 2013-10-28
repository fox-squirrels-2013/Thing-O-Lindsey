require 'sinatra'

get '/' do  
  "<h1>Boo the dog</h1>"
end 

get '/about_boo' do  
  'Boo the dog is known as "The world\'s cutest dog".'  
end 

