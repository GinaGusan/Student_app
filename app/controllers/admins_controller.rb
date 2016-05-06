class AdminsController < ApplicationController
	before_action :authenticate_admin!

	# def index
	# 	@admins = Admin.all
	# end

	# def show
	# 	@admin = Admin.find(params[:id]) 
	# end

	# def new
	# 	@admin = Admin.new
	# end

	# def create
	# 	@admin = Admin.new(admin_params)
	# 	if @admin.save
	# 		redirect_to admin_path
	# 	end
	# end

	# def destroy
	# 	@admin = Admin.destroy(params[:id])
	# 	redirect_to admin_path
	# end

	# private
	# def admin_params
	# 	params.require(:admin_id).permit(:email, :password)
	# end

# class AdminsController < ApplicationController

# 	before_action :authenticate_admin!

# 	

# 	def edit
# 		@admin = @admin.find(params[:id])
# 	end

# 	def update
# 		@admin = @admin.find(params[:id])
# 		if @admin.update admin_params
# 			redirect_to root_path
# 		else
# 			render :edit
# 		end
# 	end

# 	def destroy
# 		@admin = @admin.destroy(params[:id])
# 		redirect_to root_path
# 	end
# end
end
