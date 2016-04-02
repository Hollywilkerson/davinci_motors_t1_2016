
require 'rails_helper'

feature 'Creating Cars' do
  scenario 'can create a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('1967 Ford Mustang created')
  end

  scenario 'can create a second car' do
    Car.create(year: 'Ford', model: 'Mustang', year: '1967', price: '2300')

    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Model T'
    fill_in 'Year', with: '1908'
    fill_in 'Price', with: '260'

    click_button 'Create Car'

    expect(page).to have_content('1908 Ford Model T created')
  end
end
