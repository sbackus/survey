require 'rubygems'
require 'sinatra'

get '/form' do
  erb :form
end

post '/form' do
   file = File.open('data.txt', 'a')
   file.puts params[:message]
  "You said '#{params[:message]}'"
end

get '/data' do 
	file = File.open('data.txt', 'r')
	file.read
end