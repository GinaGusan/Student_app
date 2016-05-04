class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|

      t.timestamps null: false
      t.integer :semester_id
      t.string :title
      t.string :start_time
      t.string :end_time
      t.integer :room_num
      t.string :type_lesson
      t.string :teacher_name
      t.string :day
    end
  end
end
