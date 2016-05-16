class RenameSemesterToTimetable < ActiveRecord::Migration
  def change
  	rename_table :semesters, :timetables
  end
end
