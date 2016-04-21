class AddColumsDirMatrizToDocumento < ActiveRecord::Migration
  def change
    add_column :documentos, :DirMatriz, :string
  end
end
