class CreateModuloCalificadas < ActiveRecord::Migration
  def change
    create_table :modulo_calificadas do |t|
      t.references :paciente, index: true
      t.string :nombre_completo
      t.string :genero
      t.string :tipo_documento
      t.string :numero_identificacion
      t.string :fecha_nacimiento
      t.integer :edad
      t.string :lugar_nacimiento
      t.string :estrato_economico
      t.string :nivel_ingresos
      t.string :etapa_ciclo_vital
      t.string :ciudad
      t.string :departamento
      t.string :direccion
      t.string :telefono
      t.string :email
      t.string :nivel_escolaridad
      t.string :estado_civil
      t.string :afiliacion
      t.string :motivo_calificacion

      t.timestamps
    end
  end
end
