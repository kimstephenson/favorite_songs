class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: login_params[:username])
    if user && user.authenticate(login_params[:password])
      log_in(user)
      redirect_to root_path
    else
      render "new"
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end

  private
  def login_params
    params.permit(:username, :password)
  end
end
