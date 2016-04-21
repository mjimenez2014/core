class AddCollumnCantidadToDocmanual < ActiveRecord::Migration
  def change
    add_column :docmanuals, :cantidad, :integer
  end
end
