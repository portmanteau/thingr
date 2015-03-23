require 'spec_helper'

feature 'User Adds A New Item' do
  scenario 'Signed in User' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    visit new_item_path 
    fill_in "Name", with: "Rad Item"
    fill_in "Description", with: "The best thing ever.\n Better than everything"

    click_button "Add Thing(r)"
    expect(page).to have_content('Thing(r) added')
 end 
end
