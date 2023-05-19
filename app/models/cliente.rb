class Cliente < ApplicationRecord
  has_many :vehiculos, dependent: :destroy
  validates :rut_cliente, presence: true, length: { maximum: 10 }
  validates :correo_cliente, presence: true, length: { maximum: 50 }
  validates :password_cliente, presence: true, length: { maximum: 20 }
  validates :nombre_cliente, presence: true, length: { maximum: 20 }
  validates :apellido_cliente, presence: true, length: { maximum: 20 }
end
