class AddColumnRutrecepToDetlibro < ActiveRecord::Migration
  def change
    add_column :detlibros, :rutrecep, :string
  end
end
