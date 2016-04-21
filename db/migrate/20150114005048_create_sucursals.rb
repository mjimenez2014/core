class CreateSucursals < ActiveRecord::Migration
  def change
    create_table :sucursals do |t|
      t.string :nombre
      t.string :cdgsiisucur
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
