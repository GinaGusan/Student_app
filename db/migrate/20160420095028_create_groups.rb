class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|

      t.timestamps null: false
      t.integer :specialty_id
      t.string :title
    end
  end
end
