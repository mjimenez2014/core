class AddColumnDteToLogIat < ActiveRecord::Migration
  def change
    add_column :log_iats, :ultimoping, :datetime
  end
end
