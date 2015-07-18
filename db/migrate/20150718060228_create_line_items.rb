class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :order, index: true
      t.integer :material_quantity_kg
      t.integer :dollar_amount
      t.text :notes

      t.timestamps null: false
    end
    add_foreign_key :line_items, :orders
  end
end
