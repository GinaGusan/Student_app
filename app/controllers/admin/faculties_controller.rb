class Admin::FacultiesController < AdminsController

  before_action :set_university, except: [:index, :show]

	def index
		@faculties = Faculty.all.group_by{|f| f.university_id}
	end

	def show
		@faculty = Faculty.find(params[:id])
	end

	def edit
		@faculty = @university.faculties.find(params[:id])
		respond_to :html, :js
	end

	def new
		@faculty = @university.faculties.new
		respond_to :html, :js
	end

	def create
		@faculty = @university.faculties.new(faculty_params)
		if @faculty.save
			redirect_to admin_university_path(@university.id)
    	end
	end

	def update
		@faculty = @university.faculties.find(params[:id])
		if @faculty.update faculty_params
			redirect_to admin_university_path(@university.id)
		else
			render :edit
		end
	end

	def destroy
		@faculty = @university.faculties.destroy(params[:id])
		redirect_to admin_university_path(@university.id)
	end

	private
	def faculty_params
		params.require(:faculty).permit(:university_id, :title)
	end

  	def set_university
    	@university = University.find(params[:university_id])  
  	end

end
