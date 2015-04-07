require "spec_helper"

feature "User Adds A New Item" do
  scenario "Signed in User" do
    user = create(:user)
    login_as(user)

    visit new_item_path
    fill_in t("simple_form.labels.item.name"), with: "Rad Item"
    fill_in t("simple_form.labels.item.description"),
      with: "The best thing ever.\n Better than everything"

    click_button t("helpers.submit.item.create")
    expect(page).to have_content("Rad Item")
  end
end
