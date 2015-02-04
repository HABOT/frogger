require 'sinatra'

get '/' do
	erb :login
end

get '/niveles' do
		erb :niveles
end

get '/home' do
	@@jugador = params["usuario"]
	erb :home
end

