class Admin::SpecialtiesController < AdminsController

	before_action :set_university, :set_faculty, except: [:index, :show]

	def index
		@specialties = Specialty.all.group_by{|s| s.faculty_id}
	end

	def show
		@specialty = Specialty.find(params[:id])
	end

	def new
		@specialty = @faculty.specialties.new
		respond_to :html, :js
	end

	def create
		@specialty = @faculty.specialties.new(specialty_params)
		if @specialty.save
			redirect_to admin_faculty_path(@faculty.id)
		end
	end

	def edit
		@specialty = @faculty.specialties.find(params[:id])
		respond_to :html, :js
	end

	def update
		@specialty = @faculty.specialties.find(params[:id])
		if @specialty.update specialty_params
			redirect_to admin_faculty_path(@faculty.id)
		else
			render :edit
		end
	end

	def destroy 
		@specialty = @faculty.specialties.destroy(params[:id])
		redirect_to admin_faculty_path(@faculty.id)
	end

	private
	def specialty_params
		params.require(:specialty).permit(:faculty_id, :title)
	end

	def set_university
    	@university = University.find(params[:university_id])  
  	end

	def set_faculty
    	@faculty = Faculty.find(params[:faculty_id])  
  	end
end
