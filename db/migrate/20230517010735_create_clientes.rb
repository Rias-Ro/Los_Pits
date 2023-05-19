class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes, id: false do |t|
      t.string :rut_cliente, limit: 10, null: false
      t.string :correo_cliente, limit: 50
      t.string :password_cliente, limit: 20
      t.string :nombre_cliente, limit: 20
      t.string :apellido_cliente, limit: 20

      t.timestamps
    end

    execute 'ALTER TABLE clientes ADD PRIMARY KEY (rut_cliente);'
  end
end

