class Scholar::SessionsController < Devise::SessionsController
	def create
		super do |resource|
			sign_out(current_teacher) if current_teacher
		end
	end
end