class AddEstadoToLibro < ActiveRecord::Migration
  def change
    add_column :libros, :estado, :string
  end
end
