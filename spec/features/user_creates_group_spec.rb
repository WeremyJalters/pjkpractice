
require "rails_helper"

feature "user creates group" do
  scenario "with valid data" do
    sign_in
    visit 'groups/new'

    fill_in "Teacher name", with: "Walters"
    fill_in "Group time", with: "10:15"
    fill_in "Group name", with: "NC ESL"
    fill_in "Group description", with: "Newcomer ESL group from Grade 2"
    click_button "Create Group"
    expect(page).to have_content ("You created a 10:15 group for Walters")
  end
end
