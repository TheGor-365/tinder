class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_devise
    devise_parameter_sanitizer.permit(:account_update, keys: [ :username, :first_name, :last_name, images: [] ])
  end

end
