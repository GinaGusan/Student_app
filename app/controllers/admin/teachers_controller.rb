class Admin::TeachersController < AdminsController

	before_action :set_university

	def index
		@teachers = @university.teachers
	end

	def show
		@teacher = @university.teachers.find(params[:id])
	end

	def new
		@teacher = @university.teachers.new
	end

	def create
		@teacher = @university.teachers.new(teacher_params)
		if @teacher.save
			redirect_to admin_university_path @university.id
		else
			render :new
		end
	end

	def edit
		@teacher = @university.teachers.find(params[:id])
	end

	def update
		@teacher = @university.teachers.find(params[:id])
		if @teacher.update teacher_params
			redirect_to admin_university_path @university.id
		end
	end

	def destroy
		@teacher = @university.teachers.destroy(params[:id])
		redirect_to admin_university_path @university.id
	end

	private
	def teacher_params
		params.require(:teacher).permit(:university_id, :name, :email, :password, :teacher_faculty, :teacher_department)
	end

	def set_university
    	@university = University.find(params[:university_id])  
  	end

end
