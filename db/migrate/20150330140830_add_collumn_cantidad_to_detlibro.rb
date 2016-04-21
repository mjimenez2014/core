class AddCollumnCantidadToDetlibro < ActiveRecord::Migration
  def change
    add_column :detlibros, :cantidad, :integer
  end
end
