class CreateTipodtes < ActiveRecord::Migration
  def change
    create_table :tipodtes do |t|
      t.integer :tipo
      t.string :nombre

      t.timestamps
    end
  end
end
