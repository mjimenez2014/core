class CreateUsuarioempresas < ActiveRecord::Migration
  def change
    create_table :usuarioempresas do |t|
      t.string :rutempresa
      t.string :useremail

      t.timestamps
    end
  end
end
