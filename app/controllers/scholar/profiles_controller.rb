class Scholar::ProfilesController < ScholarsController

	before_action :set_group

	def edit
		@semester = @group.semesters
	end

	def update
		@scholar = current_scholar
		if @scholar.update
			redirect_to scholar_profile_path @scholar.id
		end
	end

	def show
		@scholar = @group.scholars.find(params[:id])
	end

	private
	def scholar_params
		params.require(:scholar).permit(:group_id, :email, :password, :group_name, :semester_number)
	end

	def set_group
		@group = Group.find.params(:group_id)
	end
end
