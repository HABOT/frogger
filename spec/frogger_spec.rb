require './lib/millas'

describe Millas do

	it "si ingreso al home debo ver el numero de millas" do

		#arrange
		consultar = Millas.new

		#act
		result = consultar.consultarMillas "Juan"
	
		#assert
		result.should == "250"

	end
end
