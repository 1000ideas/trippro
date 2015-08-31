class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.integer :phone_number
      t.string :email
      t.string :company

      t.timestamps
    end
  end
end
