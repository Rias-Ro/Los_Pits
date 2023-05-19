class CreateServicios < ActiveRecord::Migration[7.0]
  def change
    create_table :servicios do |t|
      t.string :nombre_servicio, limit: 50
      t.decimal :valor

      t.timestamps
    end
  end
end
