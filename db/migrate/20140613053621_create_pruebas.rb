class CreatePruebas < ActiveRecord::Migration
  def change
    create_table :pruebas do |t|
      t.string :rut
      t.string :nombre

      t.timestamps
    end
  end
end
