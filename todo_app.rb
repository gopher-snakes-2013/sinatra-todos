$LOAD_PATH.unshift(File.expand_path('.'))

require 'sinatra'
require 'sinatra/activerecord'

require 'models/todo'


# This loads environment variables from the .env file
require 'dotenv'
Dotenv.load

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || postgres://localhost/todo')

get '/' do
	@todos = Todo.all
  erb :index
end

post '/todos' do
  Todo.create(:todo => params["todo"])
  redirect '/'
end