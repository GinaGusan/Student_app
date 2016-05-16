class Admin::GroupsController < AdminsController

	before_action :authenticate_admin!, :set_university, :set_faculty, :set_specialty

	def index
		@groups = @specialty.groups
	end

	def show
		@group = @specialty.groups.find(params[:id])
	end

	def new
		@group = @specialty.groups.new 
		respond_to :html, :js
	end

	def create
		@group = @specialty.groups.new group_params
		if @group.save
			redirect_to admin_university_faculty_specialty_path @university.id, @faculty.id, @specialty.id
		end
	end

	def edit
		@group = @specialty.groups.find(params[:id])
		respond_to :html, :js
	end

	def update
		@group = @specialty.groups.find(params[:id])
		if @group.update group_params
			redirect_to admin_university_faculty_specialty_path @university.id, @faculty.id, @specialty.id
		end
	end

	def destroy
		@group = @specialty.groups.destroy(params[:id])
		redirect_to admin_university_faculty_specialty_path @university.id, @faculty.id, @specialty.id
	end

	private
	def group_params
		params.require(:group).permit(:specialty_id, :title)
	end

	def set_university
    	@university = University.find(params[:university_id])  
  	end

	def set_faculty
    	@faculty = Faculty.find(params[:faculty_id]) 
    end

    def set_specialty
    	@specialty = Specialty.find(params[:specialty_id])
    end
end
