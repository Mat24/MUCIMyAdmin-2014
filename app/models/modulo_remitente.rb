class ModuloRemitente < ActiveRecord::Base
  belongs_to :paciente
  validates :nombre, presence: true
  validates :nombre_entidad, presence: true
  validates :cargo, presence: true
  validates :ciudad, presence: true
  validates :paciente_id, presence: true
  validates :departamento, presence: true
  validates :direccion, presence: true
  validates :telefono, presence: true
  validates :email, presence: true
  validates :fecha_solicitud, presence: true
end
