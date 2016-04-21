class AddCollumsToDetlibro < ActiveRecord::Migration
  def change
    add_column :detlibros, :mntneto, :integer
    add_column :detlibros, :mntexe, :integer
    add_column :detlibros, :mntiva, :float
    add_column :detlibros, :otrosimpto, :float
    add_column :detlibros, :impto18, :float
    add_column :detlibros, :impto10, :float
    add_column :detlibros, :impto25, :float
    add_column :detlibros, :impto30, :float
  end
end
