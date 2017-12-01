class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  #before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end


  before_action :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :state, :job, :age])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :state, :job, :age])
  end
end
