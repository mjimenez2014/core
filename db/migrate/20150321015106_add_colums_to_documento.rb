class AddColumsToDocumento < ActiveRecord::Migration
  def change
    add_column :documentos, :NomVendedor, :string
    add_column :documentos, :DirRegionalSII, :string
    add_column :documentos, :NombreCertificado, :string
    add_column :documentos, :FchResol, :string
    add_column :documentos, :BodEmis, :string
    add_column :documentos, :BodRecep, :string
    add_column :documentos, :TelRecep, :string
  end
end
