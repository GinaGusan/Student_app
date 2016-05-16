class Admin::CoursesController < AdminsController

	before_action :set_university, :set_faculty, :set_specialty, :set_group, :set_timetable

	def index 
		@courses = @timetable.courses
	end

	def show
		@course = @timetable.courses.find(params[:id])
	end

	def new
		@course = @timetable.courses.new
	end

	def create
		@course = @timetable.courses.new course_params
		if @course.save
			redirect_to admin_university_faculty_specialty_group_timetable_path @university.id, @faculty.id, @specialty.id, @group.id, @timetable.id
		end
	end

	def edit
		@course = @timetable.courses.find(params[:id])
	end

	def update
		@course = @timetable.courses.find(params[:id])
		if @course.update course_params
			redirect_to admin_university_faculty_specialty_group_timetable_path @university.id, @faculty.id, @specialty.id, @group.id, @timetable.id
		else
			redirect_to :edit
		end
	end

	def destroy
		@course = @timetable.courses.destroy(params[:id])
		redirect_to admin_university_faculty_specialty_group_timetable_path @university.id, @faculty.id, @specialty.id, @group.id, @timetable.id
	end

	private
	def course_params
		params.require(:course).permit(:timetable_id, :title, :start_time, :room_num, :type_lesson, :teacher_name, :day).merge(end_time: params[:course][:start_time])
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

    def set_group
    	@group = Group.find(params[:group_id])
    end

    def set_timetable
    	@timetable = Timetable.find(params[:timetable_id])
    end

end
