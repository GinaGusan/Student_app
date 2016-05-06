class Teacher::HomeController < TeachersController
	
	before_action :set_university

	def index 
		@courses = Course.where(teacher_name: current_teacher.name)
	end

	private
	def set_university
    	@university = University.find(current_teacher.university_id)  
  	end
end
