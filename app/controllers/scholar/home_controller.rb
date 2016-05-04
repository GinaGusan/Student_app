class Scholar::HomeController < ScholarsController
	def index
		@scholars = Scholar.all
	end
end
