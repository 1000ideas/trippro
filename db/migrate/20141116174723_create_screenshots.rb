class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|
      t.text :description
      t.integer :order
      t.datetime :deleted_at, null: true

      t.timestamps
    end
    add_index :screenshots, :deleted_at
  end
end
