class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception


  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  layout :set_layout

  def set_layout
    if devise_controller? and !user_signed_in?
      'login'
    else
      'application'
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nome])

  end
end
