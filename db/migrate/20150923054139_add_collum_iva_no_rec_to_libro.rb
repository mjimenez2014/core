class AddCollumIvaNoRecToLibro < ActiveRecord::Migration
  def change
    add_column :libros, :estadoxml, :text
  end
end
