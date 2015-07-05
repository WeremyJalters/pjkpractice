require "rails_helper"

feature "user updates group" do
  scenario " by changing teacher"do
    sign_in
   group = FactoryGirl.create(:group)

    visit edit_group_path(group)

    fill_in "Teacher name", with: "Walters"
    fill_in "Group time", with: "10:15"
    fill_in "Group name", with: "NC ESL"
    fill_in "Group description", with: "Newcomer ESL group from Grade 2"
    click_button "Update Group"
    expect(page).to have_content ("You have updated this group")
  end
end
