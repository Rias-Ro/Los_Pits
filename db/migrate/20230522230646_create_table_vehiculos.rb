class CreateTableVehiculos < ActiveRecord::Migration[7.0]
  def change
    create_table :vehiculos, id: false do |t|
      t.string :patente_vehiculo, primary_key: true, limit: 7
      t.string :modelo_vehiculo, limit: 30
      t.string :color_vehiculo, limit: 15
      t.string :rut_cliente, limit: 10

      t.timestamps
    end

    add_foreign_key :vehiculos, :clientes, column: :rut_cliente, primary_key: "rut_cliente"
  end
end