class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :show, :update, :destroy]

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to :back
      flash[:notice] = "There was an error with your signup."
    end
  end

  def edit
    @user = User.find(params[:id])

  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  def destroy
    User.find_by(current_user.id).destroy
    redirect_to root_path
  end



  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
