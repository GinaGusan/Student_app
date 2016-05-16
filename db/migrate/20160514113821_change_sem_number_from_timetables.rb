class ChangeSemNumberFromTimetables < ActiveRecord::Migration
  def change
  	rename_column :timetables, :sem_number, :current_timetable
  	change_column :timetables, :current_timetable, :string
  end
end
