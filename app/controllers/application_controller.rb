class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    session[:user_id] ? User.find(session[:user_id]) : nil
  end
  helper_method :current_user

  def log_out
    session[:user_id] = nil
  end
end
