class Scholar::ProfilesController < ScholarsController

	def index
		@scholars = Scholar.all
	end

	def show
		@scholar = current_scholar
	end

	def edit
		@scholar = current_scholar
	end

	def update
		@scholar = current_scholar
		if @scholar.update scholar_params
			redirect_to scholar_profile_path @scholar.id
		else
			render :edit
		end
	end

	private
	def scholar_params
		params.require(:scholar).permit(:group_id, :email, :password, :name)
	end
end
