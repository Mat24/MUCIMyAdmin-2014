class CreateRols < ActiveRecord::Migration
  def change
    create_table :rols do |t|
      t.references :user, index: true
      t.string :nombre

      t.timestamps
    end
  end
end
