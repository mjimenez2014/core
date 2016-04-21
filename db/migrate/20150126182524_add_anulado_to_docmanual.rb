class AddAnuladoToDocmanual < ActiveRecord::Migration
  def change
    add_column :docmanuals, :anulado, :string
  end
end
