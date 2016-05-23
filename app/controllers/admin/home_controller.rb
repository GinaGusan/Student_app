class Admin::HomeController < AdminsController
	
	def index
		@scholars = Scholar.all
	end
end
