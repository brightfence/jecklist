class SessionsController < ApplicationController

  def create

    @user = User.find_by(name: session_params[:name])

    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to :back
      flash[:notice] = "There was an error with your login."
    end

  end

  def new
  end

  def destroy
    # session[:user_id] = nil
    # redirect_to root_path
    session.clear
    reset_session
    # log_out
    redirect_to root_path
  end

  private
  def session_params
    params.require("/login").permit(:name, :password)
    # params.require(:session).permit(:name, :password)
  end

end