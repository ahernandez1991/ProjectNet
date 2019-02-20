class EquiposController < ApplicationController
  before_action :private_access, except: [:index, :show]

    def index
      @equipo = Equipo.all
    end

    def show
      @p = Equipo.find(params[:id])
    end

    def new
      @p=Equipo.new
    end

    def create
      @p=Equipo.new(equipo_params)
      if @p.save
        redirect_to equipo_path(@p), notice: "Se ha creado el equipo exitosamente"
      else
      puts "No se pudo guardar"
      end
    end

    def edit
      @p = Equipo.find(params[:id])
    end

    def update
      @p = Equipo.find(params[:id])
      if @p.update(equipo_params)
        redirect_to equipo_path(@p), notice: "Se ha guardado el equipo exitosamente"
      else
        render :edit
      end
    end

    def destroy
      project = Equipo.find(params[:id])
      project.destroy
      redirect_to equipo_path, alert: "El equipo se ha eliminado correctamente"
    end

  private
    def equipo_params
      params.require(:equipo).permit(:nombre, :serial, :fecha, :marca, :modelo, :descripcion)
    end
end
