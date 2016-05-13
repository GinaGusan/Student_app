class Scholar::TimetablesController < ScholarsController
	
	def index
		@courses = []
		Course.all.each do |c|
			if c.group.id == current_scholar.group_id
				@courses << c

			end
		end	
	end

end
