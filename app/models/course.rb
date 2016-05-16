class Course < ActiveRecord::Base
	belongs_to :timetable
	has_one :group, through: :timetable

	enum working_days: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
	enum course_starting_hours: ['8:00', '9:35', '11:10', '12:40', '14:10', '15:40', '17:10', '18:40']
	enum course_ending_hours: ['9:20', '10:55', '12:30', '14:00', '15:30', '17:00', '18:30', '20:00']
end
