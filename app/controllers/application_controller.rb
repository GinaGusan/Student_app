class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
  def after_sign_in_path_for (resource)
  	if resource.class == Admin 
  		stored_location_for(resource) || admin_path
  	elsif resource.class == Teacher
  		stored_location_for(resource) || teacher_path	
  	end
  end

  def after_sign_up_path_for (resource)
    if resource.class == Admin 
      stored_location_for(resource) || admin_path
    elsif resource.class == Teacher
      stored_location_for(resource) || teacher_path 
    end
  end

end
