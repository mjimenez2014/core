class CreateCompmanuals < ActiveRecord::Migration
  def change
    create_table :compmanuals do |t|
      t.integer :tipodoc
      t.integer :folio
      t.string :fchemis
      t.string :rutemisor
      t.string :rutrecep
      t.string :rznsoemisor
      t.integer :mntneto
      t.integer :mntexe
      t.float :mntiva
      t.float :otrosimpto
      t.integer :mnttotal
      t.float :impto18
      t.float :impto10
      t.float :impto25
      t.float :impto30
      t.string :estado

      t.timestamps
    end
  end
end
