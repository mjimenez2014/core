class CreateImptoretencompras < ActiveRecord::Migration
  def change
    create_table :imptoretencompras do |t|
      t.string :TipoImp
      t.float :TasaImp
      t.integer :MontoImp
      t.references :doccompra, index: true

      t.timestamps
    end
  end
end
