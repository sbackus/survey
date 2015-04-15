require 'rubygems'
require 'sinatra'

get '/' do 
	"this is a survey app built with sinatra. </br>"+
	"see: https://github.com/sbackus/survey </br>"+
	"<a href='/form'>Take the survey </a>"
end

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