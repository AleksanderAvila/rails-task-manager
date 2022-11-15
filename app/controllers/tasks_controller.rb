class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @taskShow = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.create(task_params)
    @tasks.save

    redirect_to tasks_path(@tasks)
  end

  def update
    @tasks = Task.find(params[:id])
    @tasks.update(task_params)

    redirect_to tasks_path(@tasks)
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_tasks
    @tasks = Task.find(params[:id])
  end
end
