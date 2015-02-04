require './lib/login'

describe Login do

  it "Validar que ingrese a la pantalla home con el usuario" do    
	# Arrange
	login = Login.new
	# Act
	acceso = login.consultarUsuario "Jugador"
	# Assert
    acceso.should == true	
  end
end

