class CreateCampaigns < ActiveRecord::Migration[6.1]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :location
      t.text :description
      t.integer :amount
      t.integer :duration
      t.integer :donation_id

      t.timestamps
    end
  end
end

