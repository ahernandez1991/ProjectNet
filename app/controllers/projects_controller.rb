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
      redirect_to project_path(@p), notice: "Se ha creado el proyecto exitosamente"
    else
    puts "No se pudo guardar"
    end
  end

  def edit
    @p = Project.find(params[:id])
  end

  def update
    @p = Project.find(params[:id])
    if @p.update(project_params)
      redirect_to project_path(@p), notice: "Se ha guardado el proyecto exitosamente"
    else
      render :edit
    end
  end

  def destroy
  end

private
  def project_params
    params.require(:project).permit(:nombre, :introduccion, :planteamiento, :antecedentes, :justificacion, :marco_teorico, :objetivos, :desarrollo, :conclusiones, :referencias)
  end

end
