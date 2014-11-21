class CreateModuloRemitentes < ActiveRecord::Migration
  def change
    create_table :modulo_remitentes do |t|
      t.references :paciente, index: true
      t.string :nombre
      t.string :nombre_entidad
      t.string :tipo_entidad
      t.string :cargo
      t.string :ciudad
      t.string :departamento
      t.string :direccion
      t.string :telefono
      t.string :email
      t.string :fecha_solicitud

      t.timestamps
    end
  end
end
