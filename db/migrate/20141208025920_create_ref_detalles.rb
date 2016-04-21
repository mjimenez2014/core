class CreateRefDetalles < ActiveRecord::Migration
  def change
    create_table :ref_detalles do |t|
      t.integer :NroLinRef
      t.string :TpoDocRef
      t.integer :IndGlobal
      t.string :FolioRef
      t.string :RUTOtr
      t.string :IdAdicOtr
      t.string :FchRef
      t.integer :CodRef
      t.string :RazonRef
      t.references :documento, index: true

      t.timestamps
    end
  end
end
