class AddEnviadoToLibros < ActiveRecord::Migration
  def change
    add_column :libros, :enviado, :string
  end
end
