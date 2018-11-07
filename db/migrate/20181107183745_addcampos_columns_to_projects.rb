class AddcamposColumnsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :introduccion, :string
    add_column :projects, :planteamiento, :string
    add_column :projects, :antecedentes, :string
    add_column :projects, :justificacion, :string
    add_column :projects, :marco_teorico, :string
    add_column :projects, :objetivos, :string
    add_column :projects, :desarrollo, :string
    add_column :projects, :conclusiones, :string
    add_column :projects, :referencias, :string
  end
end
