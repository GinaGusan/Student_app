class Teacher::SessionsController < Devise::SessionsController
	def create
		super do |resource|
			sign_out(current_scholar) if current_scholar
		end
	end
end