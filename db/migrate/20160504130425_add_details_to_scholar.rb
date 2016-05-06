class AddDetailsToScholar < ActiveRecord::Migration
  def change
  	add_column :scholars, :group_name, :string
  	add_column :scholars, :semester_number, :integer
  end
end
