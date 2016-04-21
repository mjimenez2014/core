class CreateImpuestoRetens < ActiveRecord::Migration
  def change
    create_table :impuesto_retens do |t|
      t.string :TipoImp
      t.float :TasaImp
      t.integer :MontoImp
      t.references :documento, index: true

      t.timestamps
    end
  end
end
