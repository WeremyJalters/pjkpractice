class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :teacher_name
      t.datetime :group_time
      t.string :group_name
      t.text :group_description

      t.timestamps null: false
    end
  end
end
