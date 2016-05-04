class ChangeEndTimeFromCourses < ActiveRecord::Migration
  def change
  	change_column :courses, :end_time, :integer
  end
end
