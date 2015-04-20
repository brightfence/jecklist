class TasksController < ApplicationController

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create!(task_params)
    @list = List.find_by(@task.list_id)
    if @task.save
      redirect_to list_path(@list)
    else
      flash[:notice] = "There was an error saving your task."
    end
  end








  private

  def task_params
    params.require(:user).permit(:description, :completed)
  end


end
