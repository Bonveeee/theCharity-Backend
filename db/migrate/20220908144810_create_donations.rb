class CreateDonations < ActiveRecord::Migration[6.1]
  def change 
    create_table :donations do |t|
      t.string :name
      t.date :date
      t.string :description
      t.integer :donor_id

      t.timestamps
       end
  end
end

