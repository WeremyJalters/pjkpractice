require "rails_helper"
#require "support/features/clearance_helpers"

feature "user creates teacher" do
  scenario " with valid data" do
    sign_in
    visit 'teachers/new'

    fill_in "First name", with: "Jackie"
    fill_in "Last name", with: "Crawford"
    click_button "Create Teacher"


    expect(page).to have_content ("Teacher created.")
    expect(page).to have_content ("Jackie Crawford")
  end
end
