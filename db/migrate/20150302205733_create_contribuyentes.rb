class CreateContribuyentes < ActiveRecord::Migration
  def change
    create_table :contribuyentes do |t|
      t.string :rut, index: true
      t.string :nombre
      t.string :email

      t.timestamps
    end
  end
end
