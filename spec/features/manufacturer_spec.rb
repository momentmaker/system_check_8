require 'rails_helper'
feature 'New manufacturer' do
  scenario 'User tries to add a new manufacturer' do
    visit manufacturers_path
    click_on 'Add A New Manufacturer'
    fill_in 'Name', with: 'ZoomZoom'
    fill_in 'Country', with: 'deDust'
    click_button 'Create Manufacturer'

    expect(page).to have_content 'Manufacturer submitted'
  end

  scenario 'User tries to add a manufacturer already exists' do
    honda = FactoryGirl.create(:manufacturer)
    visit manufacturers_path
    click_on 'Add A New Manufacturer'
    fill_in 'Name', with: 'Honda'
    fill_in 'Country', with: 'deDust'
    click_button 'Create Manufacturer'

    expect(page).to have_content 'Invalid entry'
  end
end
