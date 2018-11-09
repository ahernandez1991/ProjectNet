class RemoveFechaFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :fecha, :date
  end
end
