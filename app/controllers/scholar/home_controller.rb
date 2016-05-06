class Scholar::HomeController < ScholarsController

	def index
		@courses = Course.all
		
	end

	# def show
	# 	@semester = Semester.where(group_id: current_scholar.group_id)
	# end
end
