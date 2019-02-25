class AddDisponibilidadToEquipos < ActiveRecord::Migration[5.2]
  def change
    add_column :equipos, :disponibilidad, :boolean
  end
end
