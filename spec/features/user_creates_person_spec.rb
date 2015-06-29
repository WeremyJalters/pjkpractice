require "rails_helper"

feature "user creates student" do
  scenario "with valid data" do
    visit '/students/new'

    fill_in "First name", with: "Clementine"
    fill_in "Last name", with: "Smith"
    click_button "Create Student"

    expect(page).to have_content ("Student created.")
    expect(page).to have_content ("Clementine Smith")
  end
end
