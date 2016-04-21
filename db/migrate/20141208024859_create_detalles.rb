class CreateDetalles < ActiveRecord::Migration
  def change
    create_table :detalles do |t|
      t.integer :NroLinDet
      t.string :TpoCodigo
      t.string :VlrCodigo
      t.string :TpoDocLiq
      t.string :IndExe
      t.string :IndAgente
      t.integer :MntBaseFaena
      t.integer :MntMargComer
      t.integer :PrcConsFinal
      t.integer :NmbItem
      t.string :DscItem
      t.integer :QtyRef
      t.string :UnmdRef
      t.float :PrcRef
      t.float :QtyItem
      t.string :FchElabor
      t.string :FchVencim
      t.string :UnmdItem
      t.float :PrcItem
      t.float :DescuentoPct
      t.integer :DescuentoMonto
      t.string :CodImpAdic
      t.integer :MontoItem
      t.references :documento, index: true

      t.timestamps
    end
  end
end
