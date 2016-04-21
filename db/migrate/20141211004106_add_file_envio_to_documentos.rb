class AddFileEnvioToDocumentos < ActiveRecord::Migration
  def change
    add_column :documentos, :fileEnvio, :string
  end
end
