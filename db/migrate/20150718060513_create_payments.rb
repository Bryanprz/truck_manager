class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :invoice, index: true
      t.date :date
      t.float :amount
      t.string :payment_type
      t.text :notes

      t.timestamps null: false
    end
  end
end
