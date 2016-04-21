class AddFilefacturaToDocumento < ActiveRecord::Migration
  def change
    add_column :documentos, :fileFactura, :string
  end
end
