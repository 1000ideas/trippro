class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message
      t.datetime :deleted_at, null: true

      t.timestamps
    end
    add_index :contacts, :deleted_at
  end
end
