require 'rails_helper'

feature 'Editing cars' do
  scenario 'should edit a car' do
    Car.create(make: 'Ford', model: 'Mustang', year: '1967', price: '2300')

    visit '/'

    click_link 'Edit Car'

    fill_in 'Make', with: 'Chevy'
    fill_in 'Model', with: 'Malibu'

    click_button 'Update Car'

    expect(page).to have_content('Car changed to 1967 Chevy Malibu')
  end
end
