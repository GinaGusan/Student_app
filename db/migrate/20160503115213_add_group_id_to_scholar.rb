class AddGroupIdToScholar < ActiveRecord::Migration
  def change
    add_column :scholars, :group_id, :integer
  end
end
