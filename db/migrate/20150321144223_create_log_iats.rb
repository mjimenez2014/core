class CreateLogIats < ActiveRecord::Migration
  def change
    create_table :log_iats do |t|
      t.string :sucursal
      t.string :rut
      t.date :ultimo_ping
      t.integer :tipo_dte
      t.integer :ultimo_folio

      t.timestamps
    end
  end
end
