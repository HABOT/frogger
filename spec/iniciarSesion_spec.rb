

describe Score do

  it "Validar que ingrese a la pantalla login" do    
	# Arrange
	score = Score.new
	# Act
	puntos = score.get_puntos_jugador1
	# Assert
    puntos.should == 0	
  end

