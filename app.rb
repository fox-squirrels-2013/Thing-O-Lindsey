require 'sinatra'
require 'active_record'
# require_relative  #fill in 'model'

get '/' do  
  "<h1>I love stuffed animals.</h1>"
end 

get '/about_boo' do  
  'Boo the dog is known as "The world\'s cutest dog".'  
end 

