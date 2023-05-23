class Vehiculo < ApplicationRecord
  belongs_to :cliente, optional: true

  validates :patente_vehiculo, uniqueness: true
end