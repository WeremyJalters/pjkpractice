class Student < ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name, presence: true
 # validates :group_name, presence: true, uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
