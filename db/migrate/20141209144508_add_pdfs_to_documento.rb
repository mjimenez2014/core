class AddPdfsToDocumento < ActiveRecord::Migration
  def change
    add_column :documentos, :pdfs, :string
  end
end
