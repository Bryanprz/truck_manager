class CreateTruckCapacities < ActiveRecord::Migration
  def change
    create_table :truck_capacities do |t|
      t.references :truck, index: true
      t.integer :material_quantity_per_trip
      t.text :notes

      t.timestamps null: false
    end
    add_foreign_key :truck_capacities, :trucks
  end
end
