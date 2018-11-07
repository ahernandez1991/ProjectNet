class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @p=Project.new
  end

  def create
    @p=Project.new(project_params)
    @project.user = current_user
    if @p.save
      redirect_to projects_path, notice: "Se ha creado el proyecto exitosamente"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def project_params
    params.require(:project).permit(:nombre, :fecha)
  end

end
