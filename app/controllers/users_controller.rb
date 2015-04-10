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

  def edit
  end

  def update
  end

  def destroy
  end



  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
