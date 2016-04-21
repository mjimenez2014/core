class CreateEnvioclientes < ActiveRecord::Migration
  def change
    create_table :envioclientes do |t|
      t.integer :folio
      t.integer :tipo
      t.string :rut
      t.string :rznsoc

      t.timestamps
    end
  end
end
