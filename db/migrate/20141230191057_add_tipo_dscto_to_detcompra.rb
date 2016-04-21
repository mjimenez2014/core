class AddTipoDsctoToDetcompra < ActiveRecord::Migration
  def change
    add_column :detcompras, :TipoDscto, :string
  end
end
