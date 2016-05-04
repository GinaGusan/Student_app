class Admin::SemestersController < AdminsController

	before_action :set_university, :set_faculty, :set_specialty, :set_group

	def index
		@semesters = @group.semesters
	end

	def show
		@semester = @group.semesters.find(params[:id])
	end

	def new
		@semester = @group.semesters.new
	end

	def create
		@semester = @group.semesters.new semester_params
		if @semester.save
			redirect_to admin_university_faculty_specialty_group_path @university.id, @faculty.id, @specialty.id, @group.id
		end
	end

	def edit
		@semester = @group.semesters.find(params[:id])
	end

	def update
		@semester = @group.semesters.find(params[:id])
		if @semester.update semester_params
			redirect_to admin_university_faculty_specialty_group_path @university.id, @faculty.id, @specialty.id, @group.id
		end
	end

	def destroy
		@semester = @group.semesters.destroy(params[:id])
		redirect_to admin_university_faculty_specialty_group_path @university.id, @faculty.id, @specialty.id, @group.id
	end

	private
	def set_university
    	@university = University.find(params[:university_id])  
  	end

	def set_faculty
    	@faculty = Faculty.find(params[:faculty_id]) 
    end

    def set_specialty
    	@specialty = Specialty.find(params[:specialty_id])
    end

    def set_group
    	@group = Group.find(params[:group_id])
    end

    def semester_params
		params.require(:semester).permit(:group_id, :sem_number)
	end
end
