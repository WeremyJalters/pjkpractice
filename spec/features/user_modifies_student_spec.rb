require "rails_helper"

feature "user modifies student" do
  scenario " by changing group" do
    sign_in
    group = FactoryGirl.create(:group)
    student = FactoryGirl.create(:student)

    visit edit_student_path(student)

    select "Gr5 ESL", from: 'student[group_name]'

    click_button "Update Student"

    expect(page).to have_content ("Student Updated")
  end
end
