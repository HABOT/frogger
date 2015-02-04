require 'sinatra'

get '/' do
    @@mensaje=""
	erb :login
end

get '/niveles' do
		erb :niveles
end

get '/home' do
	@@jugador = params["usuario"]
	if @@jugador == ""
		@@mensaje="Ingrese Usuario"
		erb :login
	else

		erb :home
	end
end


