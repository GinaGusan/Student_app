class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected
  def after_sign_in_path_for (resource)
  	if resource.class == Admin 
  		stored_location_for(resource) || admin_path
  	elsif resource.class == Teacher
  		stored_location_for(resource) || teacher_path	
    elsif resource.class == Scholar
      stored_location_for(resource) || scholar_path 
    end
  end

  def after_sign_up_path_for (resource)
    if resource.class == Admin 
      stored_location_for(resource) || admin_path
    elsif resource.class == Teacher
      stored_location_for(resource) || teacher_path
    elsif resource.class == Scholar
      stored_location_for(resource) || scholar_path 
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up){|u| u.permit(:email, :password, :password_confirmation, :group_id)}
  end

  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller? && resource.class == Admin
      "admins"
    end 
  end
end
