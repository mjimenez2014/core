class Doccompra < ActiveRecord::Migration
  def change
    add_index :doccompras, [:RUTEmisor, :Folio, :TipoDTE], :unique => true
  end
end
