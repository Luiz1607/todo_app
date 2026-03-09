class TasksController < ApplicationController
  before_action :require_login

  def index
    @tasks = current_user.tasks.order(created_at: :desc)
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.new(task_params)

    if @task.save
      redirect_to tasks_path, notice: "Tarefa criada com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to tasks_path, notice: "Tarefa atualizada com sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, notice: "Tarefa removida com sucesso!"
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :done, :due_date)
  end
end
