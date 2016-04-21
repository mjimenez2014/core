class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :rznsocial
      t.string :rut

      t.timestamps
    end
  end
end
