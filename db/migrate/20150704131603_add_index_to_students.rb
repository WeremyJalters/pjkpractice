class AddIndexToStudents < ActiveRecord::Migration
  def change
    add_index :students, [:first_name, :last_name ], :unique => true
  end
end
