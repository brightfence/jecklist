class TasksController < ApplicationController

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)

  end








  private

  def task_params
    params.require(:user).permit(:description, :completed)
  end


end
