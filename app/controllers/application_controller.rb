class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?



  # rescue_from CanCan::AccessDenied do |exception|
  #     redirect_to root_path, alert: "You can't access this page"
  #   end




  protected

     def configure_permitted_parameters
       devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username,:user_image, :email, :password, :password_confirmation, :remember_me) }
       devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :user_image, :email, :password, :remember_me) }
       devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email,:user_image ,:password, :password_confirmation, :current_password) }
     end
end
