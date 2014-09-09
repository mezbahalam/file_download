class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user?(user)
    current_user == user
  end
  helper_method :current_user?

  private
  def logged_in
    if admin_signed_in?

    else
      authenticate_user!
    end
  end
end
