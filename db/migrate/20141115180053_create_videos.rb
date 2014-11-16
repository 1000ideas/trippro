class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :page_name
      t.datetime :deleted_at, null: true

      t.timestamps
    end
    add_index :videos, :deleted_at
  end
end
