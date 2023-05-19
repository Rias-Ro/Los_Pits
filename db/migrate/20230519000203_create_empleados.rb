class CreateEmpleados < ActiveRecord::Migration[7.0]
  def change
    create_table :empleados, id: false do |t|
      t.string :rut_empleado, limit: 10, primary_key: true
      t.string :correo_empleado, limit: 50
      t.string :password_empleado, limit: 15
      t.string :nombre_empleado, limit: 20
      t.string :apellido_empleado, limit: 20
      t.string :cargo_empleado, limit: 10

      t.timestamps
    end
  end
end
