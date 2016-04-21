class AddOrdencompraToDocumento < ActiveRecord::Migration
  def change
    add_column :documentos, :NroOrdenCompra, :string
  end
end
