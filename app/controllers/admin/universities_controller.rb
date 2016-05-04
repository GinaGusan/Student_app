class Admin::UniversitiesController < AdminsController

	def index
		@universities = University.all
	end

	def show
		@university = University.find(params[:id])
	end

	def create
		@university = University.new(university_params)
    	if @university.save
      		redirect_to admin_universities_path @university
    	end
	end

	def new
    	@university = University.new
	end

	def edit
    	@university = University.find(params[:id])
	end

	def update
	    @university = University.find(params[:id])
	    if @university.update university_params
	      redirect_to :action => 'index', :id => @university
	    else
	      render :edit
	    end
	end

	def destroy
	    @university = University.delete(params[:id])
			redirect_to :action => :index
	end

  private
  def university_params
    params.require(:university).permit(:title)
  end
end
