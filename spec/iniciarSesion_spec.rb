describe Login do

  it "Validar que ingrese a la pantalla login" do    
	# Arrange
	login = Login.new
	# Act
	acceso = login.usuario
	# Assert
    acceso.should == true	
  end
end

