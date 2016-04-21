class AddFchenvioToLibros < ActiveRecord::Migration
  def change
    add_column :libros, :fchenvio, :string
  end
end
