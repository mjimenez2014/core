class CreateComisions < ActiveRecord::Migration
  def change
    create_table :comisions do |t|
      t.integer :NroLinCom
      t.string :TipoMovim
      t.string :Glosa
      t.integer :ValComNeto
      t.integer :ValComExe
      t.integer :ValComIVA
      t.references :documento, index: true

      t.timestamps
    end
  end
end
