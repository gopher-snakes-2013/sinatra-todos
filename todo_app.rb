$LOAD_PATH.unshift(File.expand_path('.'))

require 'sinatra'
require 'sinatra/activerecord'
require 'shotgun'
require 'models/todo'

begin
# This loads environment variables from the .env file
require 'dotenv'
Dotenv.load
rescue LoadError
end


set :database, ENV['DATABASE_URL']

get '/' do
  @todos = Todo.all
  @todo = Todo.new
  erb :index
end

post '/' do
  @todos = Todo.all
  @todo = Todo.create(:name => params["todos"])
  if @todo.errors.empty?
    redirect '/'
  else
    erb :index
  end
end

post '/todos/1/complete' do

end

