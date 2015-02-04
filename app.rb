require 'sinatra'

get '/' do
	erb :login
end

get '/home' do
	erb :home
end
