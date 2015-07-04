require "rails_helper"
#require "support/features/clearance_helpers"

feature "user creates student" do
  scenario "with valid data" do
    sign_in
    visit '/students/new'

    fill_in "First name", with: "Clementine"
    fill_in "Last name", with: "Smith"
    click_button "Create Student"

    expect(page).to have_content ("Student created.")
    expect(page).to have_content ("Clementine Smith")
  end
  
  scenario "with invalid data" do
    sign_in
    visit '/students/new'

    fill_in "First name", with: " "
    fill_in "Last name", with: "Smith"
    click_button "Create Student"

    expect(page).to have_content ("Student wasn't saved. Try again.")
  end
end
