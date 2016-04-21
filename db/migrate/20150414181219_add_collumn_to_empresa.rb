class AddCollumnToEmpresa < ActiveRecord::Migration
  def change
    add_column :empresas, :from, :string
  end
end
