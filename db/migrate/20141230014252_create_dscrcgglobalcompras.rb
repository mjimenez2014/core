class CreateDscrcgglobalcompras < ActiveRecord::Migration
  def change
    create_table :dscrcgglobalcompras do |t|
      t.integer :NroLinDR
      t.string :TpoMov
      t.string :GlosaDR
      t.string :TpoValor
      t.integer :ValorDR
      t.integer :IndExeDR
      t.references :doccompra, index: true

      t.timestamps
    end
  end
end
