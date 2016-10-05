require 'rails_helper'

feature "visiting the registration page" do
  context "when visiting the registration page" do
    scenario "the user can visit the registration form" do
      visit "/users/new"

      expect(page).to have_button("submit")
    end
  end

  context "when submitting a registration form" do
    scenario "the user can submit a registration form" do
      visit "/users/new"
      fill_in "username", :with => "username"
      fill_in "password", :with => "password"

      click_button("submit")
      expect(page).to have_content "username"
    end
  end
end
