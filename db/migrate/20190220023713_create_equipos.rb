class CreateEquipos < ActiveRecord::Migration[5.2]
  def change
    create_table :equipos do |t|
      t.string :nombre
      t.string :serial
      t.date :fecha
      t.string :marca
      t.string :modelo
      t.string :descripcion

      t.timestamps
    end
  end
end
