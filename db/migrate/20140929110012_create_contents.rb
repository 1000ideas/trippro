class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents, id: false do |t|
      t.string :id, null: false
      t.text :content

      t.timestamps
    end
    add_index :contents, :id, name: 'contents_id_index', unique: true
  end
end


# class CreateContents < ActiveRecord::Migration
#   def change
#     create_table :contents, id: false do |t|
#       t.string :id, null: false
#       t.text :text

#       t.timestamps
#     end

#     add_index :contents, :id, name: 'contents_id_index', unique: true
#   end
# end
