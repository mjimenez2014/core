class AddColumnToLogIat < ActiveRecord::Migration
  def change
    add_column :log_iats, :udtejson, :string
  end
end
