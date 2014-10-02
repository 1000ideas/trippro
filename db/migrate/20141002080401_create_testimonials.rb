class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.attachment :photo
    # t.string :photo
      t.text :content
      t.string :name
      t.string :position
      t.datetime :deleted_at, null: true

      t.timestamps
    end
    add_index :testimonials, :deleted_at
  end
end
