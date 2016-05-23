class Admin::TimetablesController < AdminsController

	before_action :set_university, :set_faculty, :set_specialty, :set_group

	# def index
	# 	@semesters = @group.semesters
	# end

	def show
		@timetable = @group.timetable
	end

	def new
		@timetable = Timetable.new
		respond_to :html, :js
	end

	def create
		puts "@@@@@@#{timetable_params}"
		@timetable = Timetable.new timetable_params
		if @timetable.save
			redirect_to admin_group_path(@group.id)
		end
	end

	def edit
		@timetable = @group.timetable
	end

	def update
		@timetable = @group.timetable
		if @timetable.update timetable_params
			redirect_to admin_group_path(@group.id)
		end
	end

	def destroy
		@timetable = @group.timetable
		redirect_to admin_group_path(@group.id)
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

    def timetable_params
		params.require(:timetable).permit(:current_timetable).merge!(group_id: params[:group_id])
	end
end
