class AddEstadoEnvioXmlToDocumentos < ActiveRecord::Migration
  def change
    add_column :documentos, :estadoEnvioXml, :text
  end
end
