class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :distance_km
      t.references :line_item, index: true
      t.text :notes

      t.timestamps null: false
    end
    add_foreign_key :trips, :line_items
  end
end
