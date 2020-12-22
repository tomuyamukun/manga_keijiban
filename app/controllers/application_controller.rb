class ApplicationController < ActionController::Base


  before_action :configure_parmitted_parameters, if: :devise_controller?
  protected



  def configure_parmitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end


end
