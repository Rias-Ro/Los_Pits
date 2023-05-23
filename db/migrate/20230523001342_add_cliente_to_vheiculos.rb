class AddClienteToVheiculos < ActiveRecord::Migration[7.0]
  def change
    add_column :vehiculos, :cliente_id, :string
    add_foreign_key :vehiculos, :clientes, column: :cliente_id, primary_key: :rut_cliente
  end
end