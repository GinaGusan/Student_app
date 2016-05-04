class CreateTeachers < ActiveRecord::Migration
  def change
  	drop_table :teachers
    create_table :teachers do |t|

      t.timestamps null: false
      t.string :name
      t.string :teacher_faculty
      t.string :teacher_department
      t.integer :university_id
    end
  end
end
