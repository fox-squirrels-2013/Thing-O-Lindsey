require 'sinatra'
require 'active_record'
require_relative './app/models/users'

ActiveRecord::Base.establish_connection(adapter: 'postgresql',
									database: 'users')

# require_relative  #fill in 'model'

get '/' do  
	@all_users = User.all :order => :id  
  erb :index
end 

#add name
post '/' do  
  # puts params
  User.create(:name => params[:name])
  redirect '/'
end 

# post '/' do  
#   puts params
#   User.create(:name => params[:name])
#   redirect '/'
# end 

# get '/login' do  
#   erb :login
# end 

# post '/layout' do  
#   "You input '#{params[:message]}.'"
# end 

