class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << :first
  devise_parameter_sanitizer.for(:sign_up) << :last
  devise_parameter_sanitizer.for(:sign_up) << :sex
  devise_parameter_sanitizer.for(:sign_up) << :age

  devise_parameter_sanitizer.for(:account_update) << :first
  devise_parameter_sanitizer.for(:account_update) << :last
  devise_parameter_sanitizer.for(:account_update) << :sex
  devise_parameter_sanitizer.for(:account_update) << :age

end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
