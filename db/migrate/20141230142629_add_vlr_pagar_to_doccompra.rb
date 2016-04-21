class AddVlrPagarToDoccompra < ActiveRecord::Migration
  def change
    add_column :doccompras, :VlrPagar, :integer
  end
end
