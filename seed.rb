require 'faker'
require 'active_record'
require_relative './app/models/users'

ActiveRecord::Base.establish_connection(adapter: 'postgresql',
									database: 'users')

20.times do
	User.create(:name => Faker::Lorem.sentence)
end