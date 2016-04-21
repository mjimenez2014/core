class AddValorDsctoToDetcompra < ActiveRecord::Migration
  def change
    add_column :detcompras, :ValorDscto, :float
  end
end
