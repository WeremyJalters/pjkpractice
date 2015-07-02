class ChangeGroupTimeTypeinGroups < ActiveRecord::Migration
  def change
    change_column :groups, :group_time, :string
  end
end
