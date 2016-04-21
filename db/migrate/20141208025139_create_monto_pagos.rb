class CreateMontoPagos < ActiveRecord::Migration
  def change
    create_table :monto_pagos do |t|
      t.string :FchPago
      t.integer :MntPago
      t.references :documento, index: true

      t.timestamps
    end
  end
end
