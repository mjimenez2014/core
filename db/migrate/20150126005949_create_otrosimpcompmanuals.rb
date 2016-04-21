class CreateOtrosimpcompmanuals < ActiveRecord::Migration
  def change
    create_table :otrosimpcompmanuals do |t|
      t.string :TipoImp
      t.float :TasaImp
      t.integer :MontoImp
      t.references :compmanual, index: true

      t.timestamps
    end
  end
end
