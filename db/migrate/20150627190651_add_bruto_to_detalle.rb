class AddBrutoToDetalle < ActiveRecord::Migration
  def change
    add_column :detalles, :PrcBruItem, :float
    add_column :detalles, :DescuentoBruMonto, :float
    add_column :detalles, :MontoBruItem, :float
  end
end
