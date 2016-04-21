class CreateDocsemails < ActiveRecord::Migration
  def change
    create_table :docsemails do |t|
      t.string :estado
      t.text :xmlrecibido

      t.timestamps
    end
  end
end
