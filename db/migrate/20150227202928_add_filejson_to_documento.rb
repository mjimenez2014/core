class AddFilejsonToDocumento < ActiveRecord::Migration
  def change
    add_column :documentos, :fileJson, :string
  end
end
