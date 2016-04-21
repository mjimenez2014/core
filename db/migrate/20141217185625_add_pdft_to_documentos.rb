class AddPdftToDocumentos < ActiveRecord::Migration
  def change
    add_column :documentos, :pdft, :string
  end
end
