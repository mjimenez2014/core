class FixColumnCompmanual < ActiveRecord::Migration
  def change
    rename_column :compmanuals, :rznsoemisor, :rznsocemisor
  end
end
