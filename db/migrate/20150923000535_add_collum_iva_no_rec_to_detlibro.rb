class AddCollumIvaNoRecToDetlibro < ActiveRecord::Migration
  def change
    add_column :detlibros, :ivanorec, :integer
    add_column :detlibros, :codivanorec, :integer
  end
end
