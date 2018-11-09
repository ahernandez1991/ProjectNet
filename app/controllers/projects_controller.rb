class ProjectsController < ApplicationController

before_action :private_access, except: [:index, :show]

  def index
    @projects = Project.all
  end

  def show
    @p = Project.find(params[:id])
  end

  def new
    @p=Project.new
  end

  def create
    @p=Project.new(project_params)
    @p.user=current_user
    if @p.save
      redirect_to projects_path, notice: "Se ha creado el proyecto exitosamente"
    else
    puts "No se pudo guardar"
    end
  end

  def edit
    @p = Project.find(params[:id])
  end

  def update
    
  end

  def destroy
  end

private
  def project_params
    params.require(:project).permit(:nombre)
  end

end
