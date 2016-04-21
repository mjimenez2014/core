class CreateDscRcgGlobals < ActiveRecord::Migration
  def change
    create_table :dsc_rcg_globals do |t|
      t.integer :NroLinDR
      t.string :TpoMov
      t.string :GlosaDR
      t.string :TpoValor
      t.integer :ValorDR
      t.integer :IndExeDR
      t.references :documento, index: true

      t.timestamps
    end
  end
end
