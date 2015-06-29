require "rails_helper"

feature "user creates student" do
  scenario "with valid data" do
    visit '/students/new'

    fill_in "First name", with: "Clementine"
    click_button "Create Student"

    expect(page).to have_content ("Person created.")
    expect(page).to have_content ("Clementine")
  end
end
