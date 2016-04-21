class CreateDetlibros < ActiveRecord::Migration
  def change
    create_table :detlibros do |t|
      t.integer :tipodte
      t.integer :folio
      t.string :rutemis
      t.integer :mnttotal
      t.references :libro, index: true

      t.timestamps
    end
  end
end
