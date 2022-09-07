class ApplicationController < ActionController::Base
	before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:image, :first_name, :last_name, :date_of_birth, :address, :contact_no, :gender, :designation, :role_ids])
  end
end
