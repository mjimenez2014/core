class CreateDetcompras < ActiveRecord::Migration
  def change
    create_table :detcompras do |t|
      t.integer :NroLinDet
      t.string :TpoCodigo
      t.string :VlrCodigo
      t.string :TpoDocLiq
      t.string :IndExe
      t.string :IndAgente
      t.float :MntBaseFaena
      t.float :MntMargComer
      t.integer :PrcConsFinal
      t.string :NmbItem
      t.string :DscItem
      t.float :QtyRef
      t.string :UnmdRef
      t.float :PrcRef
      t.float :QtyItem
      t.string :FchElabor
      t.string :FchVencim
      t.string :UnmdItem
      t.float :PrcItem
      t.float :DescuentoPct
      t.float :DescuentoMonto
      t.string :CodImpAdic
      t.float :MontoItem
      t.references :doccompra, index: true

      t.timestamps
    end
  end
end
