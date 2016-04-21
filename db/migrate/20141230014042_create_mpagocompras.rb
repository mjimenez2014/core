class CreateMpagocompras < ActiveRecord::Migration
  def change
    create_table :mpagocompras do |t|
      t.string :FchPago
      t.integer :MntPago
      t.references :doccompra, index: true

      t.timestamps
    end
  end
end
