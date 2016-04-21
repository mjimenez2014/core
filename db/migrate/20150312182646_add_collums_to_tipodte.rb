class AddCollumsToTipodte < ActiveRecord::Migration
  def change
    add_column :tipodtes, :manual, :string
  end
end
