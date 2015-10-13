class AddConsolidatorToSignup < ActiveRecord::Migration
  def change
    add_column :signups, :consolidator, :integer
  end
end
