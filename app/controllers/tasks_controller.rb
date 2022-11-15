class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(set_params)
    @task.save
    redirect_to tasks_path
  end

  def show
    @task = Task.find(params[:id]) # a commenter avec le before_action
  end


  def new
    @task = Task.new
  end

  private

  def set_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
