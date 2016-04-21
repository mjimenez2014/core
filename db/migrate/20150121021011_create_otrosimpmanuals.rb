class CreateOtrosimpmanuals < ActiveRecord::Migration
  def change
    create_table :otrosimpmanuals do |t|
      t.string :TipoImp
      t.float :TasaImp
      t.integer :MontoImp
      t.references :docmanual, index: true

      t.timestamps
    end
  end
end
