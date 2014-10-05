require 'rails_helper'
feature 'New car' do
  scenario 'User tries to add new car' do
    honda = FactoryGirl.create(:manufacturer)
    visit manufacturers_path
    click_on 'Add A New Car'
    select 'Honda', from: 'Manufacturer'
    fill_in 'Color', with: 'Red'
    fill_in 'Year', with: '1990'
    fill_in 'Mileage', with: '24122'
    click_button 'Create Car'

    expect(page).to have_content 'Car submitted'
  end

  scenario 'User tries to add new car' do
    honda = FactoryGirl.create(:manufacturer)
    visit manufacturers_path
    click_on 'Add A New Car'
    select 'Honda', from: 'Manufacturer'
    fill_in 'Color', with: 'Red'
    fill_in 'Year', with: '1990'
    fill_in 'Mileage', with: '24122'
    click_button 'Create Car'

    expect(page).to have_content 'Car submitted'
  end
end
