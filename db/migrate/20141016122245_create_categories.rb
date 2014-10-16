class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.datetime :deleted_at, null: true

      t.timestamps
    end
    add_index :categories, :deleted_at
  end
end
