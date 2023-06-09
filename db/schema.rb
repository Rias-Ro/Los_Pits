# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_23_001342) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", primary_key: "rut_cliente", id: { type: :string, limit: 10 }, force: :cascade do |t|
    t.string "correo_cliente", limit: 50
    t.string "password_cliente", limit: 20
    t.string "nombre_cliente", limit: 20
    t.string "apellido_cliente", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehiculos", primary_key: "patente_vehiculo", id: { type: :string, limit: 7 }, force: :cascade do |t|
    t.string "modelo_vehiculo", limit: 30
    t.string "color_vehiculo", limit: 15
    t.string "rut_cliente", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cliente_id"
  end

  add_foreign_key "vehiculos", "clientes", column: "rut_cliente", primary_key: "rut_cliente"
  add_foreign_key "vehiculos", "clientes", primary_key: "rut_cliente"
end
