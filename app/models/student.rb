class Student < ActiveRecord::Base
  validates_uniqueness_of :first_name, scope: :last_name
  validates :first_name, presence: true
  validates :last_name, presence: true
 # validates :group_name, presence: true, uniqueness: true

  def full_name
    [first_name, last_name].join(' ')
  end
end
