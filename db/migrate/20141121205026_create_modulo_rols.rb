class CreateModuloRols < ActiveRecord::Migration
  def change
    create_table :modulo_rols do |t|
      t.references :paciente, index: true
      t.string :institucion
      t.string :nivel_grado
      t.string :direccion
      t.string :telefono
      t.string :email
      t.text :observaciones

      t.timestamps
    end
  end
end
