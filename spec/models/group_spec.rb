require 'rails_helper'

RSpec.describe Group, :type => :model do
 
  it "is invalid without a group name" do
    group = Group.new(group_name: nil )

    expect(group).to be_invalid
end

end
