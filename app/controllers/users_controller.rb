class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "Se ha creado el usuario exitosamente"
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path, alert: "El usuario se ha eliminado correctamente"
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :name, :rol)
    end

end
