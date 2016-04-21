class AddEstadoxmlToDocumento < ActiveRecord::Migration
  def change
    add_column :documentos, :estadoxml, :text
  end
end
