class CreatePickupSites < ActiveRecord::Migration
  def change
    create_table :pickup_sites do |t|
      t.string :name
      t.string :address

      t.timestamps null: false
    end
  end
end
