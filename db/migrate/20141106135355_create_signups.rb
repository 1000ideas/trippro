class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :email
      t.string :password
      t.string :retype_password
      t.string :job_title
      t.integer :fax_number
      t.string :referrer
      t.string :agency_name
      t.string :agency_phone
      t.string :president
      t.string :adress
      t.string :city
      t.string :country
      t.string :state
      t.string :zip
      t.string :diff_adress
      t.string :diff_city
      t.string :diff_country
      t.string :diff_state
      t.string :diff_zip
      t.string :arc
      t.string :iata
      t.string :ttt
      t.string :clia
      t.string :webiste
      t.string :business_type
      t.string :hba
      t.string :host
      t.string :affiliate
      t.string :asta
      t.string :sabre_pcc
      t.string :galileo_pcc
      t.string :worldspan_pcc
      t.string :amadeus_pcc
      t.string :apollo_pcc
      t.datetime :deleted_at, null: true

      t.timestamps
    end
    add_index :signups, :deleted_at
  end
end
