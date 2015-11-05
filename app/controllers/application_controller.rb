class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #call method before sign in
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  #setting strong parameters, and nickname allows
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :nickname, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :email, :nickname, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :nickname, :password, :password_confirmation, :current_password) }
  end

  # devise redirect URLs after sign in
  def after_sign_in_path_for(resource)
    users_path
  end
end
