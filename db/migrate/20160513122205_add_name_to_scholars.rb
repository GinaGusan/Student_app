class AddNameToScholars < ActiveRecord::Migration
  def change
    add_column :scholars, :name, :string
  end
end
