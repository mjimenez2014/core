class AddCollumIvaNoRecToCompmanual < ActiveRecord::Migration
  def change
    add_column :compmanuals, :ivanorec, :integer
    add_column :compmanuals, :codivanorec, :integer
  end
end
