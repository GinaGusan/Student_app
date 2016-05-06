class Scholar::TimetablesController < ScholarsController
	def index
		@courses = Course.all
	end
end
