class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
