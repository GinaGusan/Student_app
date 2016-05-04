class Teacher::HomeController < TeachersController
	
	before_action :set_university

	def index 
		@courses = Course.where(teacher_name: current_teacher.name)
	end

	# def show
	# 	@course = @semester.courses.find(params[:id])
	# 	# @semester = @group.semesters.find(params[:id])
	# end

	def set_university
    	@university = University.find(current_teacher.university_id)  
  	end
end
