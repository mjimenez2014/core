class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :rut
      t.string :tipo
      t.string :fecha
      t.string :idenvio
      t.string :xml

      t.timestamps
    end
  end
end
