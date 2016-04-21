class CreateCdgitems < ActiveRecord::Migration
  def change
    create_table :cdgitems do |t|
      t.string :TpoCodigo
      t.string :VlrCodigo
      t.references :detcompra, index: true

      t.timestamps
    end
  end
end
