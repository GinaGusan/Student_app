class RenameSemesterIdFromCoursesToTimetableId < ActiveRecord::Migration
  def change
  	rename_column :courses, :semester_id, :timetable_id
  end
end
