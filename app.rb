require 'sinatra'

get '/' do
		erb :niveles
end

get '/juego' do
		"Inicia Juego"
	erb :login
end

get '/home' do
	erb :home
end
