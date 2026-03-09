class SessionsController < ApplicationController
  def new
  end

  def index
  @tasks = current_user.tasks.order(created_at: :desc)
  end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to tasks_path, notice: "Login realizado com sucesso!"
    else
      flash.now[:alert] = "Email ou senha inválidos."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path, notice: "Logout realizado com sucesso!"
  end
end
