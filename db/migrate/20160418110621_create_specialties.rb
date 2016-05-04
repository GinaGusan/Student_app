class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|

      t.timestamps null: false
      t.integer :faculty_id
      t.string :title
    end
  end
end
