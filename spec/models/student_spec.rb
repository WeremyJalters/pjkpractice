require 'rails_helper'

RSpec.describe Student, :type => :model do

  it "is invalid without a first name" do
    student = Student.new(first_name: nil , last_name:"wilson")

    expect(student).to be_invalid
  end
 
  it "is invalid without a last name" do
    student = Student.new(first_name:"Jason", last_name: nil)

    expect(student).to be_invalid
  end

  it "is valid with first and last name" do
    student = FactoryGirl.create :student

    expect(student).to be_valid
  end


end

