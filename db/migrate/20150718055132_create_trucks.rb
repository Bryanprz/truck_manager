class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.float :materials_capacity_kg
      t.integer :mileage
      t.text :notes

      t.timestamps null: false
    end
  end
end
