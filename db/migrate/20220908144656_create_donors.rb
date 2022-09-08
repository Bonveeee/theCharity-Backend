class CreateDonors < ActiveRecord::Migration[6.1]
  def change 
    create_table :donors do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :address
      t.string :country

      t.timestamps
    end
  end
end
