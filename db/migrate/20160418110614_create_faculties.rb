class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|

      t.timestamps null: false
      t.integer :university_id
      t.string :title
    end
  end
end
