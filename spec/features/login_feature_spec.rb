require "rails_helper"

feature "login" do
  context "visiting the login page" do
    scenario "the user can see the login form" do
      visit "/sessions/new"

      expect(page).to have_content("login")
    end
  end

  context "logging in" do
    scenario "the user can log in" do
      User.create!(username: "username", password: "password")
      visit "/sessions/new"

      fill_in "username", :with => "username"
      fill_in "password", :with => "password"
      click_button("submit")
      expect(page).to have_content "username"
    end
  end
end
