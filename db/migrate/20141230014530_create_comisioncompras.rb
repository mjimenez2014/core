class CreateComisioncompras < ActiveRecord::Migration
  def change
    create_table :comisioncompras do |t|
      t.integer :NroLinCom
      t.string :TipoMovim
      t.string :Glosa
      t.integer :ValComNeto
      t.integer :ValComExe
      t.integer :ValComIVA
      t.references :doccompra, index: true

      t.timestamps
    end
  end
end
