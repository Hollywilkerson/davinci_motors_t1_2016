require 'rails_helper'

feature 'Show a list of cars on home page' do
  scenario 'should create a table of cars' do
    Car.create(make: 'Ford', model: 'Mustang', year: '1967', price: '2300')
    Car.create(make: 'Ford', model: 'Model T', year: '1908', price: '260')

    visit '/'

    within("#car_table") do
      expect(page).to have_content("Ford")
      expect(page).to have_content("Mustang")
      expect(page).to have_content("1967")
      expect(page).to have_content("$2,300.00")
      expect(page).to have_content("Model T")
      expect(page).to have_content("1908")
      expect(page).to have_content("$260.00")
    end
  end
end
