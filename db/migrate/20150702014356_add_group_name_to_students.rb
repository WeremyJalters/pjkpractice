class AddGroupNameToStudents < ActiveRecord::Migration
  def change
    add_column :students, :group_name, :string
  end
end
