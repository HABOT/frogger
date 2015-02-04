Given(/^que ingreso a la pagina principal del juego$/) do
	visit '/'
end

Then(/^debo ver "(.*?)"$/) do |text|
	last_response.body.should =~ /#{text}/m
end

Given(/^entre al niveles$/) do
   visit '/niveles'
end

When(/^selecciono el nivel "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^oprimir el boton "(.*?)"$/) do |name|
  click_button(name)
end 

Given(/^que ingreso mi usuario "(.*?)"$/) do |arg1|
	visit '/'
	fill_in("usuario", :with => "Jugador")
end

When(/^hago click en el boton iniciar$/) do
  click_button("Iniciar")
end

Given(/^ingreso a jugar$/) do
  visit '/home'
end

