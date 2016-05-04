class ChangeDayFromCourses < ActiveRecord::Migration
  def change
  	change_column :courses, :day, :integer
  end
end
