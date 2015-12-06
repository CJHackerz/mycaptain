class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  protected

  def devise_parameter_sanitizer
    if resource_class == User
      User::ParameterSanitizer.new(User, :user, params)
  	elsif resource_class == Admin
  	  Admin::ParameterSanitizer.new(Admin, :admin, params)
    else
      super # Use the default one
    end
  end
end

class User::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_up
    default_params.permit(:name, :date_of_birth, :email, :password, :password_confirmation)
  end
end

class Admin::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_up
    default_params.permit(:name, :date_of_birth, :email, :password, :password_confirmation)
  end
end
