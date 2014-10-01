class CreateWebinars < ActiveRecord::Migration
  def change
    create_table :webinars do |t|
      t.string :language
      t.datetime :when
      t.string :link
      t.datetime :deleted_at, null: true

      t.timestamps
    end
    add_index :webinars, :deleted_at
  end
end
