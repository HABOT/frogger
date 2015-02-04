<<<<<<< HEAD
Given(/^entre al niveles$/) do
   visit '/'
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^selecciono el nivel "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^oprimir el boton "(.*?)"$/) do |name|
  click_button(name)
=======
Given(/^que ingreso a la pagina principal del juego$/) do
	visit '/'
end

Then(/^debo ver "(.*?)"$/) do |text|
	last_response.body.should =~ /#{text}/m
end

Given(/^que ingreso mi usuario "(.*?)"$/) do |arg1|
	visit '/'
	fill_in("usuario", :with => "Jugador")
end

When(/^hago click en el boton iniciar$/) do
  click_button("Iniciar")
>>>>>>> 47d59225b77f6e723611fd19ecf94adb8b6f20f9
end

