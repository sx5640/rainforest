class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= session[:user_id] && User.find(session[:user_id])
  end

  def ensure_logged_in
    unless current_user
      flash[:alert] = 'Please login'
      redirect_to login_path
  end
  helper_method :current_user
end
