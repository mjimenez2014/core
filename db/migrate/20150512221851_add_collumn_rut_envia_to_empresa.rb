class AddCollumnRutEnviaToEmpresa < ActiveRecord::Migration
  def change
    add_column :empresas, :rutenvia, :string
  end
end
