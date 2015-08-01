class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  devise_group :admin, contains: [:company]


  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
   ## To permit attributes while registration i.e. sign up (app/views/devise/registrations/new.html.erb)
   devise_parameter_sanitizer.for(:sign_up) << :first_name << :last_name << :phone << :location << :company_id

   ## To permit attributes while editing a registration (app/views/devise/registrations/edit.html.erb)
  devise_parameter_sanitizer.for(:account_update) << :first_name << :last_name << :phone << :location

 end
end
