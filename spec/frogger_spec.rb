
describe "Seleccion Nivel" do

	it "si se selecciona basico continuio" do

		#arrange
		nivel = "
		player.name = "German"

		#act
		result = player.status?
	
		#assert
		result.should == "German life's 100"

	end
end
