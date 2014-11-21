class Paciente < ActiveRecord::Base
  belongs_to :user
  has_one :modulo_remitente
  has_one :modulo_receptora
  has_one :modulo_calificada
  has_one :modulo_rol
end
