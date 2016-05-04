class ChangeStartTimeFromCourses < ActiveRecord::Migration
  def change
  	change_column :courses, :start_time, :integer
  end
end
