class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :client, index: true
      t.date :order_date
      t.date :start_date
      t.date :end_date
      t.string :payment_terms
      t.string :payment_method
      t.text :notes

      t.timestamps null: false
    end
    add_foreign_key :orders, :clients
  end
end
