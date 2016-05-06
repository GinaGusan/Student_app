class Teacher::TimetablesController < TeachersController
	def index 
		@courses = Course.where(teacher_name: current_teacher.name)
	end
end
