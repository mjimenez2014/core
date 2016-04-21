class AddCollumnFecharesToEmpresa < ActiveRecord::Migration
  def change
    add_column :empresas, :fechares, :string
    add_column :empresas, :numerores, :string
  end
end
