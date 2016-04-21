class AddFileclienteToDocumento < ActiveRecord::Migration
  def change
    add_column :documentos, :fileCliente, :string
  end
end
