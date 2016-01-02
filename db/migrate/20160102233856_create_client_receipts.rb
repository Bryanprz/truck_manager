class CreateClientReceipts < ActiveRecord::Migration
  def change
    create_table :client_receipts do |t|
      t.integer :number
      t.float :cubic_meters
      t.float :value_per_cubic_meter
      t.date :date_worked
      t.references :order, index: true

      t.timestamps null: false
    end
    add_foreign_key :client_receipts, :orders
  end
end
