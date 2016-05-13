class RemoveDetailsFromScholars < ActiveRecord::Migration
  def change
  	remove_column :scholars, :group_name, :string
  	remove_column :scholars, :semester_number, :integer
  end
end
