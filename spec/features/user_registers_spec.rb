require 'spec_helper'

feature 'User Signs up' do
  scenario 'with valid email and paswword' do
    visit new_user_registration_path
    fill_in "Email", with: 'user@example.com'
    fill_in "Password", with: 'password'
    click_button "Sign up" 
    
    save_and_open_page
    expect(page).to have_content('')
  end
end
