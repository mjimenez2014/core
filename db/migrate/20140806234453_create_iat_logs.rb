class CreateIatLogs < ActiveRecord::Migration
  def change
    create_table :iat_logs do |t|
      t.text :description
      t.references :iat, index: true

      t.timestamps
    end
  end
end
