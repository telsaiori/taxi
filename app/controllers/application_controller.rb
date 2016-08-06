class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u|
      u.permit(:email, :password, :password_confirmation, :name, :id_no, :address, :tel, :gender, :credit_card_no)
    }
  end
end
