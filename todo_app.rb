$LOAD_PATH.unshift(File.expand_path('.'))

require 'sinatra'
require 'sinatra/activerecord'

require 'models/todo'


# This loads environment variables from the .env file
require 'dotenv'
Dotenv.load

set :database, ENV['DATABASE_URL']

get '/' do
  @todos = Todo.all
  erb :index

end

get '/filter' do
  @todos = Todo.where(todos: "salar really sucks")
  erb :index
end

post '/' do
  
  Todo.create(todos: params[:todo_name]) 
  redirect to('/')

end

