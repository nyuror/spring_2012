class ApplicationController < ActionController::Base
  protect_from_forgery

  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
end
