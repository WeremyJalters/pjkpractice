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

  it "is invalid with duplicate full name" do
    student = Student.create(
      first_name: 'James',
      last_name: 'Benson'
    )

    student = Student.create(
      first_name: 'James',
      last_name: 'Benson'
    )

    expect(student).to be_invalid
  end

  it "is valid with matching last names" do
    student = Student.create(
      first_name: 'Damon',
      last_name: 'Benson'
    )

    student = Student.create(
      first_name: 'James',
      last_name: 'Benson'
    )

    expect(student).to be_valid
  end

  it "is valid with matching first names" do
    student = Student.create(
      first_name: 'Damon',
      last_name: 'Benson'
    )

    student = Student.create(
      first_name: 'Damon',
      last_name: 'Jepeto'
    )

    expect(student).to be_valid
  end

  it "returns student's full name as a string" do
    student = FactoryGirl.create :student

    expect(student.full_name).to eq 'Lark Vorhees'
  end
end

