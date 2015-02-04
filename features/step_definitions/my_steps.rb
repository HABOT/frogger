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
end

