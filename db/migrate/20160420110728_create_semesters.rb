class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|

      t.timestamps null: false
      t.integer :group_id
      t.integer :sem_number
    end
  end
end
