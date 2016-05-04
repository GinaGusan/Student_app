module AdminsHelper

	def resource_name
		:teacher
	end

	def resource_class 
		Teacher
	end

	def resource
		@resource ||= Teacher.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:teacher]
	end
end
