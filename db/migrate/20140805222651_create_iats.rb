class CreateIats < ActiveRecord::Migration
  def change
    create_table :iats do |t|
      t.string :nombre
      t.string :sucursal
      t.date :ultimo_ping
      t.string :auth_token, index:true
      t.date :ping_inicio
      t.string :espacio_disco
      t.string :memoria
      t.references :user, index: true

      t.timestamps
    end
  end
end
