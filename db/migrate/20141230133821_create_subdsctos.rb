class CreateSubdsctos < ActiveRecord::Migration
  def change
    create_table :subdsctos do |t|
      t.string :TipoDscto
      t.float :ValorDscto
      t.references :detcompra, index: true

      t.timestamps
    end
  end
end
