require 'sinatra'

get '/' do
	erb :home
end

get '/niveles' do
		erb :niveles
end

get '/login' do
	erb :login
end


