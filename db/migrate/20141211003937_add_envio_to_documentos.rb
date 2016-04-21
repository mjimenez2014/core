class AddEnvioToDocumentos < ActiveRecord::Migration
  def change
    add_column :documentos, :envio, :text
  end
end
